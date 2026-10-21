#!/usr/bin/env bash
#
# ghcr_images.sh - publish / restore the benchmark docker images in the GitHub
# container registry, so a fresh machine (or the next run) does not rebuild them.
#
#   ./ghcr_images.sh push [name...]    build if needed, then upload
#   ./ghcr_images.sh pull [name...]    download and tag as <name>_databench
#   ./ghcr_images.sh list [name...]    what exists locally vs in the registry
#   ./ghcr_images.sh public [name...]  make published packages public (one way!)
#
# A name is a dockerfile in ./dockerfiles: base, go, rust, csharp, swift,
# python... With no names, every one of them is used (around 100GB, so you
# probably want to pick).
#
# Images are tagged with a hash of their generated Dockerfile (base + fragment),
# so a changed Dockerfile produces a different tag - "pull" then reports it as
# missing and the benchmark builds it locally instead of using a stale image.
#
# Credentials:
#   * pushing needs a token with write:packages - the token from "gh auth login"
#     does not have it by default:
#         gh auth refresh -h github.com -s write:packages,read:packages
#   * the script uses $GHCR_TOKEN, else $GITHUB_TOKEN, else "gh auth token"
#   * pulling works without a token when the packages are public
#
# GHCR storage is metered for private packages (the free allowance is tiny) but
# free for public ones, so make the packages public: GitHub -> your profile ->
# Packages -> <package> -> Package settings -> Change visibility -> Public.
#
# Examples:
#   ./ghcr_images.sh push base go rust        # the three that take longest
#   ./ghcr_images.sh list | grep -v yes       # what is not published yet
#   ./ghcr_images.sh pull go rust             # on the benchmark machine
#
# update_results.sh can do the pull side automatically: --pull-images.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKERFILES_DIR="$REPO_DIR/dockerfiles"
IMAGE_SUFFIX="_databench"

REGISTRY="${REGISTRY:-ghcr.io}"

die() {
    printf 'Error: %s\n' "$*" >&2
    exit 1
}
warn() { printf 'Warning: %s\n' "$*" >&2; }
info() { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }

usage() {
    awk 'NR > 2 && /^#/ { sub(/^# ?/, ""); print; next } NR > 2 { exit }' "$0"
}

qsize() { # bytes -> human
    awk -v b="$1" 'BEGIN { split("B KB MB GB TB", u, " ");
        i = 1; while (b >= 1024 && i < 5) { b /= 1024; i++ }
        printf "%.1f%s", b, u[i] }'
}

# ---------------------------------------------------------------------------
# image naming and tags
# ---------------------------------------------------------------------------
origin_slug() {
    local url
    url="$(git -C "$REPO_DIR" config --get remote.origin.url 2>/dev/null || true)"
    [ -n "$url" ] || return 0
    sed -e 's/\.git$//' -e 's|^ssh://||' -e 's|^https\?://||' -e 's|^git@||' \
        -e 's|:|/|' -e 's|^[^/]*/||' <<<"$url"
}

NAMESPACE="${NAMESPACE:-$(origin_slug)}"
if [ -z "$NAMESPACE" ] && [ "$REGISTRY" != "${REGISTRY#localhost}" ] && [ "$REGISTRY" != "${REGISTRY#127.0.0.1}" ]; then
    die "no --namespace and no git origin to derive one from (set NAMESPACE=...)"
fi
NAMESPACE="$(tr 'A-Z' 'a-z' <<<"$NAMESPACE")"

all_images() {
    local f
    for f in "$DOCKERFILES_DIR"/*.Dockerfile; do
        basename "$f" .Dockerfile
    done
}

generated_dockerfile() { # -> path of the generated Dockerfile for $1
    (cd "$REPO_DIR" && ./gen_dockerfile.sh "$1" >/dev/null)
    echo "$REPO_DIR/${1}_temp.Dockerfile"
}

image_hash() { # -> content hash of the generated Dockerfile
    sha256sum "$(generated_dockerfile "$1")" | cut -c1-12
}

remote_ref() { # -> registry reference with the content tag
    echo "$REGISTRY/$NAMESPACE/$1:$(image_hash "$1")"
}

local_ref() { echo "$1$IMAGE_SUFFIX"; }

have_local() { docker image inspect "$(local_ref "$1")" >/dev/null 2>&1; }
have_remote() { docker manifest inspect "$(remote_ref "$1")" >/dev/null 2>&1; }

is_local_registry() {
    case "$REGISTRY" in localhost* | 127.0.0.1* | "[::1]"*) return 0 ;; *) return 1 ;; esac
}

ensure_login() {
    is_local_registry && return 0
    local token user
    token="${GHCR_TOKEN:-${GITHUB_TOKEN:-}}"
    if [ -z "$token" ]; then
        token="$(gh auth token 2>/dev/null || true)"
    fi
    [ -n "$token" ] || {
        warn "no token found (GHCR_TOKEN / GITHUB_TOKEN / gh auth token) - only public packages can be pulled"
        return 0
    }
    user="${GHCR_USER:-}"
    [ -n "$user" ] || user="$(gh api user -q .login 2>/dev/null || true)"
    [ -n "$user" ] || user="${NAMESPACE%%/*}"
    printf '%s' "$token" | docker login "$REGISTRY" -u "$user" --password-stdin >/dev/null ||
        warn "docker login to $REGISTRY failed - pushing will fail if the packages are private"
}

# ---------------------------------------------------------------------------
# commands
# ---------------------------------------------------------------------------
cmd_push() {
    local name ref local out failed=0 pushed=0
    for name in "$@"; do
        ref="$(remote_ref "$name")"
        local="$(local_ref "$name")"

        if ! have_local "$name"; then
            if [ "$BUILD" = 1 ]; then
                info "  $name: not built locally, building ${local}"
                (cd "$REPO_DIR" && ./gen_dockerfile.sh -b "$name") ||
                    die "failed to build $local"
            else
                warn "  $name: $local does not exist locally (use --build or build it first)"
                failed=$((failed + 1))
                continue
            fi
        fi

        if [ "$FORCE" != 1 ] && have_remote "$name"; then
            info "  $name: already published as $ref"
            continue
        fi

        out="$(qsize "$(docker image inspect -f '{{.Size}}' "$local")")"
        info "  $name: pushing $ref ($out)"
        docker tag "$local" "$ref"
        if docker push "$ref" >/dev/null; then
            pushed=$((pushed + 1))
        else
            warn "  $name: push failed (docker's error is above)"
            failed=$((failed + 1))
        fi
    done
    if [ "$failed" != 0 ]; then
        warn "$failed image(s) were not pushed"
        return 1
    fi
    info "pushed $pushed image(s)"
}

cmd_pull() {
    local name ref local missing=()
    for name in "$@"; do
        ref="$(remote_ref "$name")"
        local="$(local_ref "$name")"
        if docker pull "$ref" >/dev/null 2>&1; then
            docker tag "$ref" "$local"
            info "  $name: pulled -> $local"
        else
            warn "  $name: not in the registry as $ref"
            missing+=("$name")
        fi
    done
    if [ ${#missing[@]} -gt 0 ]; then
        info "not pulled (build these locally): ${missing[*]}"
        return 1
    fi
    return 0
}

cmd_list() {
    printf '%-10s %-9s %-9s %s\n' IMAGE LOCAL REGISTRY TAG
    local name local_state remote_state size
    for name in "$@"; do
        if have_local "$name"; then
            size="$(qsize "$(docker image inspect -f '{{.Size}}' "$(local_ref "$name")")")"
            local_state="$size"
        else
            local_state="-"
        fi
        if have_remote "$name"; then
            remote_state="yes"
        else
            remote_state="no"
        fi
        printf '%-10s %-9s %-9s %s\n' "$name" "$local_state" "$remote_state" "$(image_hash "$name")"
    done
}

cmd_public() {
    # Packages are private when first published and visibility is per package,
    # so this flips them in bulk. Public -> private is not possible, hence
    # --dry-run support.
    command -v gh >/dev/null 2>&1 || die "gh is required for this command"
    local me listing
    me="$(gh api user -q .login 2>/dev/null || true)"
    [ -n "$me" ] || die "gh is not authenticated"

    listing="$(gh api --paginate "/user/packages?package_type=container" \
        --jq '.[] | [.name, .visibility, .owner.login] | @tsv' 2>/dev/null || true)"
    [ -n "$listing" ] || warn "no container packages under $me yet"

    local name pkg vis owner changed=0
    for name in "$@"; do
        pkg=""; vis=""; owner=""
        while IFS=$'\t' read -r p v o; do
            case "$p" in
            "$name" | */"$name") pkg="$p"; vis="$v"; owner="$o" ;;
            esac
        done <<<"$listing"

        if [ -z "$pkg" ]; then
            info "  $name: not published yet - nothing to do"
            continue
        fi
        if [ "$vis" = "public" ]; then
            info "  $name: already public ($pkg)"
            continue
        fi
        if [ "$DRY_RUN" = 1 ]; then
            info "  $name: would make $pkg public"
            continue
        fi

        local encoded="${pkg//\//%2F}" scope
        if [ "$owner" = "$me" ]; then
            scope="/user/packages/container"
        else
            scope="/orgs/$owner/packages/container"
        fi
        if gh api --method PATCH "$scope/$encoded/visibility" -f visibility=public >/dev/null; then
            info "  $name: now public ($pkg)"
            changed=$((changed + 1))
        else
            warn "  $name: could not change visibility of $pkg"
        fi
    done
    info "changed $changed package(s)"
}

# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------
CMD="${1:-list}"
[ $# -gt 0 ] && shift || true

NAMES=()
QUIET=0
FORCE=0
BUILD=1
DRY_RUN=0
while [ $# -gt 0 ]; do
    case "$1" in
    -q | --quiet) QUIET=1 ;;
    -f | --force) FORCE=1 ;;
    --build) BUILD=1 ;;
    --dry-run) DRY_RUN=1 ;;
    --no-build) BUILD=0 ;;
    -h | --help) usage; exit 0 ;;
    -*) die "unknown option '$1' (try --help)" ;;
    # commas or spaces both separate names ("push go,rust,zig" works)
    *) IFS=', ' read -r -a _parts <<<"$1"; NAMES+=("${_parts[@]}") ;;
    esac
    shift
done

case "$CMD" in
push | upload) CMD=push ;;
public) CMD=public ;;
pull | restore) CMD=pull ;;
list | ls) CMD=list ;;
-h | --help | help) usage; exit 0 ;;
*) die "unknown command '$CMD' (push, pull or list)" ;;
esac

if [ ${#NAMES[@]} -gt 0 ]; then
    for name in "${NAMES[@]}"; do
        [ -f "$DOCKERFILES_DIR/$name.Dockerfile" ] ||
            die "unknown image '$name' (available: $(all_images | tr '\n' ' '))"
    done
    IMAGES=("${NAMES[@]}")
else
    IMAGES=()
    while read -r name; do IMAGES+=("$name"); done < <(all_images)
fi

if [ "$CMD" != "public" ]; then
    command -v docker >/dev/null 2>&1 || die "docker is required"
fi

step "$CMD ${#IMAGES[@]} image(s) in $REGISTRY/$NAMESPACE"
# push/pull authenticate with docker; public uses gh
case "$CMD" in push | pull) ensure_login ;; esac

case "$CMD" in
push) cmd_push "${IMAGES[@]}" ;;
pull) cmd_pull "${IMAGES[@]}" ;;
list) cmd_list "${IMAGES[@]}" ;;
public) cmd_public "${IMAGES[@]}" ;;
esac
