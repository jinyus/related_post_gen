#!/usr/bin/env bash
#
# update_results.sh - re-run the benchmark, refresh the results in readme.md
# and open a pull request with the changes.
#
# Per selected test (see ./docker_run.sh for the test list and image mapping):
#   1. builds the test's docker image with ./gen_dockerfile.sh -b <image>
#   2. runs the benchmark inside that image with ./results mounted at /results
#      (the image clones the repo itself and runs the 5k/20k/60k datasets)
#   3. regenerates the tables in readme.md from ./results with extract_results.dart
#   4. commits readme.md + results/ on a new branch and opens a PR with gh
#
# Requires docker (with sudo if your user is not in the docker group), gh
# (authenticated) and git. dart is taken from the host when available,
# otherwise from the base docker image.
#
# Typical run on a fresh VPS:
#   curl -fsSL https://get.docker.com | sudo sh    # or: ./update_results.sh --install-deps
#   sudo apt install gh                            # or: sudo pacman -S github-cli
#   gh auth login
#   git clone https://github.com/<you>/related_post_gen.git && cd related_post_gen
#   ./update_results.sh
#
# Note: the containers clone the repository from its remote origin, so the
# commit that gets benchmarked is the one pushed to origin/<current branch>.
# This script verifies that before it starts.
#
# The languages are benchmarked one at a time: timings are only meaningful when
# nothing else is competing for CPU.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RESULTS_DIR="$REPO_DIR/results"
GITHUB_HOST="github.com"

# tests that are deliberately not part of the published results
DEFAULT_SKIP_TESTS="inko"

# tests to leave out of this run (--exclude)
EXCLUDE_TESTS=""

# ---------------------------------------------------------------------------
# options
# ---------------------------------------------------------------------------
DEVICE="${DEVICE:-$(hostname)}"
BASE_BRANCH="${BASE_BRANCH:-main}"
OUT_BRANCH=""
RUN2="${RUN2:-20000}"
RUN3="${RUN3:-60000}"
PR_REPO="${PR_REPO:-}"
SKIP_EXISTING=0
NEW_CAMPAIGN=0
PULL_IMAGES=0
FAIL_FAST=0
NO_PR=0
DRY_RUN=0
INSTALL_DEPS=0
TESTS=()

usage() {
    cat <<EOF
Usage: ./$SCRIPT_NAME [options] [test ...]

Re-runs the benchmark for the given tests (default: all of them), updates
readme.md from ./results and opens a pull request with the changes.

Options:
  -d, --device NAME    device label for the PR (default: \$DEVICE or $(hostname))
  -b, --base BRANCH    PR base branch (default: main)
      --branch NAME    name of the results branch (default: results-<UTC timestamp>)
      --tests "a b"    tests to run, comma or space separated (default: all)
      --exclude "a b"  tests to leave out of this run (eg. --exclude nim)
      --skip-existing  resume: skip tests already re-run in this campaign
                       (results that ship with the repository are not skipped)
      --pull-images    pull published images (ghcr_images.sh) instead of building them
      --new-campaign   forget previous progress and re-run everything
      --fail-fast      stop at the first failing test
      --no-pr          update readme.md but do not commit, push or open a PR
      --dry-run        print what would be executed without running it
      --install-deps   install docker/gh with the system package manager if missing
  -h, --help           show this help

Environment:
  DEVICE, BASE_BRANCH, PR_REPO, RUN2, RUN3, GH_TOKEN

Examples:
  ./$SCRIPT_NAME                      # every test, then open a PR
  ./$SCRIPT_NAME go go_ho             # only the Go entries
  ./$SCRIPT_NAME --skip-existing      # resume an interrupted run
  ./$SCRIPT_NAME --tests rust,rust_ho --no-pr
EOF
}

SCRIPT_NAME="$(basename "$0")"

die() {
    printf 'Error: %s\n' "$*" >&2
    exit 1
}

warn() { printf 'Warning: %s\n' "$*" >&2; }
info() { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }
now() { date '+%Y-%m-%d %H:%M:%S'; }

while [ $# -gt 0 ]; do
    case "$1" in
    -d | --device)
        DEVICE="$2"
        shift 2
        ;;
    -b | --base)
        BASE_BRANCH="$2"
        shift 2
        ;;
    --branch)
        OUT_BRANCH="$2"
        shift 2
        ;;
    --tests)
        IFS=', ' read -r -a extra <<<"$2"
        TESTS+=("${extra[@]}")
        shift 2
        ;;
    --skip-existing)
        SKIP_EXISTING=1
        shift
        ;;
    --new-campaign)
        NEW_CAMPAIGN=1
        shift
        ;;
    --pull-images)
        PULL_IMAGES=1
        shift
        ;;
    --exclude)
        EXCLUDE_TESTS="$2"
        shift 2
        ;;
    --fail-fast)
        FAIL_FAST=1
        shift
        ;;
    --no-pr)
        NO_PR=1
        shift
        ;;
    --dry-run)
        DRY_RUN=1
        shift
        ;;
    --install-deps)
        INSTALL_DEPS=1
        shift
        ;;
    -h | --help)
        usage
        exit 0
        ;;
    -*)
        die "unknown option: $1 (try --help)"
        ;;
    *)
        IFS=', ' read -r -a extra <<<"$1"
        TESTS+=("${extra[@]}")
        shift
        ;;
    esac
done

[ -n "$OUT_BRANCH" ] || OUT_BRANCH="results-$(date -u +%Y%m%d-%H%M%S)"

# ---------------------------------------------------------------------------
# parse the test -> image mapping from docker_run.sh (single source of truth)
# ---------------------------------------------------------------------------
ALL_TESTS=()
declare -A TEST_IMAGE=()

while read -r test_name image; do
    ALL_TESTS+=("$test_name")
    TEST_IMAGE["$test_name"]="$image"
done < <(sed -n '/declare -A NameToImage=(/,/^)/p' "$REPO_DIR/docker_run.sh" |
    sed -n 's/^[[:space:]]*\["\([^"]*\)"\]=["]\([^"]*\)["].*$/\1 \2/p')

[ ${#ALL_TESTS[@]} -gt 0 ] || die "could not read the test list from docker_run.sh"

if [ ${#TESTS[@]} -eq 0 ]; then
    for test_name in "${ALL_TESTS[@]}"; do
        skip=0
        for s in $DEFAULT_SKIP_TESTS; do
            [ "$test_name" = "$s" ] && skip=1
        done
        [ "$skip" = 1 ] || TESTS+=("$test_name")
    done
fi

# --exclude always filters, also from an explicit list
if [ -n "$EXCLUDE_TESTS" ]; then
    kept=()
    for test_name in "${TESTS[@]}"; do
        skip=0
        for s in $EXCLUDE_TESTS; do
            [ "$test_name" = "$s" ] && skip=1
        done
        [ "$skip" = 1 ] || kept+=("$test_name")
    done
    TESTS=("${kept[@]+"${kept[@]}"}")
fi

for test_name in "${TESTS[@]}"; do
    [ -n "${TEST_IMAGE[$test_name]:-}" ] ||
        die "unknown test '$test_name'. Known tests: ${ALL_TESTS[*]}"
done

IMAGES=()
for test_name in "${TESTS[@]}"; do
    image="${TEST_IMAGE[$test_name]}"
    found=0
    for i in ${IMAGES[@]+"${IMAGES[@]}"}; do
        [ "$i" = "$image" ] && found=1
    done
    [ "$found" = 1 ] || IMAGES+=("$image")
done

# ---------------------------------------------------------------------------
# repo / remote checks
#
# The containers clone the repo from its remote, so what gets benchmarked is
# origin/<branch> - not the local working tree.
# ---------------------------------------------------------------------------
step "Checking the repository"

[ -f "$REPO_DIR/readme.md" ] || die "readme.md not found - run this script from the repository root"
[ -f "$REPO_DIR/extract_results.dart" ] || die "extract_results.dart not found - run this script from the repository root"

git -C "$REPO_DIR" rev-parse --is-inside-work-tree >/dev/null 2>&1 ||
    die "$REPO_DIR is not a git repository"

BRANCH="$(git -C "$REPO_DIR" rev-parse --abbrev-ref HEAD)"
[ "$BRANCH" != "HEAD" ] || die "detached HEAD - check out a branch before running this script"

ORIGIN_URL="$(git -C "$REPO_DIR" config --get remote.origin.url || true)"
[ -n "$ORIGIN_URL" ] || die "no 'origin' remote configured"

# owner/repo, host stripped
slug() { # $1 = git url
    local url="$1"
    url="${url%.git}"
    url="${url#ssh://}"
    url="${url#https://}"
    url="${url#http://}"
    url="${url#git@}"
    echo "${url#*[:/]}"
}

ORIGIN_SLUG="$(slug "$ORIGIN_URL")"
case "$ORIGIN_URL" in
*"$GITHUB_HOST"*) ;;
*) die "origin ('$ORIGIN_URL') does not look like a $GITHUB_HOST remote; this script only supports GitHub" ;;
esac

REPO_NAME="${ORIGIN_SLUG##*/}"
REPO_URL="https://$GITHUB_HOST/$ORIGIN_SLUG.git"

info "repository : $ORIGIN_SLUG"
info "branch     : $BRANCH"
info "benchmarking: $REPO_URL ($BRANCH)"

if [ "$DRY_RUN" = 1 ]; then
    warn "dry run: skipping the 'branch is pushed to origin' check"
else
    git -C "$REPO_DIR" fetch --quiet origin "$BRANCH" ||
        die "could not fetch origin/$BRANCH"

    LOCAL_SHA="$(git -C "$REPO_DIR" rev-parse HEAD)"
    REMOTE_SHA="$(git -C "$REPO_DIR" rev-parse "origin/$BRANCH" 2>/dev/null || echo "")"

    [ -n "$REMOTE_SHA" ] ||
        die "origin/$BRANCH does not exist. Push your branch first: git push -u origin $BRANCH"

    [ "$LOCAL_SHA" = "$REMOTE_SHA" ] || die "local $BRANCH ($LOCAL_SHA) differs from origin/$BRANCH ($REMOTE_SHA).
The benchmark containers clone the repository from $GITHUB_HOST, so your commit
must be pushed first: git push origin $BRANCH"

    if ! git -C "$REPO_DIR" diff --quiet || ! git -C "$REPO_DIR" diff --cached --quiet; then
        warn "you have uncommitted changes to tracked files; only the pushed commit ($LOCAL_SHA) is benchmarked"
    fi
fi

# ---------------------------------------------------------------------------
# dependency checks
# ---------------------------------------------------------------------------
step "Checking dependencies"

install_deps() {
    [ "$INSTALL_DEPS" = 1 ] || return 1

    info "Installing docker and gh (--install-deps)"
    if command -v pacman >/dev/null 2>&1; then
        sudo pacman -S --noconfirm --needed docker github-cli
        sudo systemctl enable --now docker
    elif command -v apt-get >/dev/null 2>&1; then
        curl -fsSL https://get.docker.com | sudo sh
        sudo systemctl enable --now docker
        sudo mkdir -p -m 755 /etc/apt/keyrings
        curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg |
            sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null
        sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" |
            sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null
        sudo apt-get update
        sudo apt-get install -y gh
    else
        die "unsupported distribution: install docker (https://get.docker.com) and gh (https://github.com/cli/cli#installation) manually"
    fi
}

# gh must be installed and authenticated so the PR can be created - but only
# when a PR is actually wanted
if [ "$NO_PR" = 1 ]; then
    info "gh         : not needed (--no-pr)"
else
    if ! command -v gh >/dev/null 2>&1; then
        install_deps || die "gh (GitHub CLI) is not installed. Install it:
    https://github.com/cli/cli#installation
  or rerun with --install-deps"
    fi

    command -v gh >/dev/null 2>&1 || die "gh is still not available"

    if ! gh auth status >/dev/null 2>&1; then
        die "gh is not authenticated. Run 'gh auth login' (or set GH_TOKEN) first."
    fi
    info "gh         : $(gh --version | head -1)"
fi

# docker must be installed and usable
DOCKER=()
if command -v docker >/dev/null 2>&1 && docker info >/dev/null 2>&1; then
    DOCKER=(docker)
elif command -v docker >/dev/null 2>&1 && sudo -n docker info >/dev/null 2>&1; then
    DOCKER=(sudo docker)
elif [ "$DRY_RUN" = 1 ]; then
    DOCKER=(docker)
    warn "dry run: docker was not found or is not usable; skipping that check"
else
    if ! command -v docker >/dev/null 2>&1; then
        [ "$INSTALL_DEPS" = 1 ] && install_deps
    fi
    if command -v docker >/dev/null 2>&1; then
        die "docker is installed but not usable by '$USER'. Either:
    sudo usermod -aG docker $USER && newgrp docker
  or make sure 'sudo docker info' works without a password"
    fi
    die "docker is not installed. Install it with:
    curl -fsSL https://get.docker.com | sudo sh
  or rerun with --install-deps"
fi
info "docker     : ${DOCKER[*]}"

# dart is only needed for extract_results.dart; the base image ships it
if command -v dart >/dev/null 2>&1; then
    info "dart       : $(command -v dart)"
else
    info "dart       : not on the host, will use the base_databench image"
    found=0
    for i in ${IMAGES[@]+"${IMAGES[@]}"}; do
        [ "$i" = "base" ] && found=1
    done
    [ "$found" = 1 ] || IMAGES+=("base")
fi

# ---------------------------------------------------------------------------
# build the docker images
# ---------------------------------------------------------------------------
step "Building ${#IMAGES[@]} docker image(s): ${IMAGES[*]}"

mkdir -p "$RESULTS_DIR"

# gen_dockerfile.sh writes <image>_temp.Dockerfile next to the repo; remember
# what was already there so only our own leftovers get cleaned up
TEMP_BEFORE=()
for f in "$REPO_DIR"/*_temp.Dockerfile; do
    [ -e "$f" ] && TEMP_BEFORE+=("$(basename "$f")")
done
TEMP_CREATED=()

# images restored from the registry do not need a local build
PREBUILT=()
if [ "$PULL_IMAGES" = 1 ]; then
    if [ ! -x "$REPO_DIR/ghcr_images.sh" ]; then
        warn "--pull-images: ghcr_images.sh not found or not executable - building everything"
    elif [ "$DRY_RUN" = 1 ]; then
        info "[dry-run] would pull published images with ./ghcr_images.sh pull"
    else
        info "pulling published images from ${REGISTRY:-ghcr.io}"
        for image in "${IMAGES[@]}"; do
            if "$REPO_DIR/ghcr_images.sh" pull --quiet "$image" >/dev/null 2>&1; then
                PREBUILT+=("$image")
                info "  $image: pulled"
            else
                info "  $image: not published - will build"
            fi
        done
    fi
fi

FAILED_IMAGES=()
for image in "${IMAGES[@]}"; do
    prebuilt=0
    for b in ${PREBUILT[@]+"${PREBUILT[@]}"}; do
        [ "$b" = "$image" ] && prebuilt=1
    done
    if [ "$prebuilt" = 1 ]; then
        info "[$(now)] ${image}_databench: using the pulled image"
        continue
    fi

    info "[$(now)] building ${image}_databench"
    if [ "$DRY_RUN" = 1 ]; then
        info "  [dry-run] ./gen_dockerfile.sh -b $image"
        continue
    fi
    if (cd "$REPO_DIR" && ./gen_dockerfile.sh -b "$image"); then
        TEMP_CREATED+=("${image}_temp.Dockerfile")
    else
        # one broken language should not waste the whole run (see --fail-fast)
        FAILED_IMAGES+=("$image")
        warn "failed to build ${image}_databench - its tests will be skipped"
        [ "$FAIL_FAST" = 1 ] && die "stopping after a failed image build (--fail-fast)"
    fi
done

cleanup_temp_dockerfiles() {
    local name existing
    for name in "${TEMP_CREATED[@]+"${TEMP_CREATED[@]}"}"; do
        existing=0
        for f in "${TEMP_BEFORE[@]+"${TEMP_BEFORE[@]}"}"; do
            [ "$f" = "$name" ] && existing=1
        done
        [ "$existing" = 1 ] || rm -f "$REPO_DIR/$name"
    done
}
cleanup_temp_dockerfiles

# ---------------------------------------------------------------------------
# run the benchmark
# ---------------------------------------------------------------------------
step "Running ${#TESTS[@]} test(s)"

info "tests run one at a time (timings are only comparable on an idle machine);"
info "this can take hours - use --skip-existing to resume an interrupted run"

# A campaign starts with a full run and lasts until --new-campaign (or deleting
# the ignore list). --skip-existing only skips results produced *since* that
# moment, never the results that ship inside the repository.
CAMPAIGN_IGNORE="$RESULTS_DIR/.campaign-ignore"
if [ "$DRY_RUN" = 1 ]; then
    info "[dry-run] campaign ignore list: $CAMPAIGN_IGNORE"
elif [ "$SKIP_EXISTING" = 1 ] && [ "$NEW_CAMPAIGN" != 1 ] && [ -f "$CAMPAIGN_IGNORE" ]; then
    info "resuming campaign: $(grep -c . "$CAMPAIGN_IGNORE" 2>/dev/null || echo 0) pre-existing results are re-run"
else
    (cd "$RESULTS_DIR" && ls raw_results_*.md 2>/dev/null) >"$CAMPAIGN_IGNORE" || true
    info "new campaign: pre-existing results are re-run, anything this run produces is remembered"
fi

FAILED=()
PASSED=()
RUN_START=$(date +%s)
index=0

for test_name in "${TESTS[@]}"; do
    index=$((index + 1))
    image="${TEST_IMAGE[$test_name]}"
    result_file="$RESULTS_DIR/raw_results_${test_name}.md"

    skip_image=0
    for f in ${FAILED_IMAGES[@]+"${FAILED_IMAGES[@]}"}; do
        [ "$f" = "$image" ] && skip_image=1
    done
    if [ "$skip_image" = 1 ]; then
        FAILED+=("$test_name (image build failed)")
        warn "[$index/${#TESTS[@]}] $test_name: skipped, ${image}_databench could not be built"
        continue
    fi

    if [ "$SKIP_EXISTING" = 1 ] && [ -f "$result_file" ] &&
        ! grep -qxF "raw_results_${test_name}.md" "$CAMPAIGN_IGNORE" 2>/dev/null; then
        info "[$index/${#TESTS[@]}] $test_name: skipped (already ran in this campaign)"
        continue
    fi

    info "[$index/${#TESTS[@]}] $test_name ($(now)) - image ${image}_databench"
    test_start=$(date +%s)

    # GIT_PAT is passed empty on purpose: the PR is created on the host, not
    # from inside the container.
    run_args=(run --rm
        -v "$RESULTS_DIR:/results"
        -e "TEST_NAME=$test_name"
        -e "GIT_REPO=$REPO_URL"
        -e "GIT_REPO_NAME=$REPO_NAME"
        -e "BRANCH=$BRANCH"
        -e "GIT_PAT="
        -e "RUN2=$RUN2"
        -e "RUN3=$RUN3"
        -e "DEVICE=$DEVICE"
        "${image}_databench")

    if [ "$DRY_RUN" = 1 ]; then
        info "  [dry-run] ${DOCKER[*]} ${run_args[*]}"
        continue
    fi

    status=0
    "${DOCKER[@]}" "${run_args[@]}" || status=$?

    if [ "$status" -ne 0 ]; then
        FAILED+=("$test_name (exit $status)")
        warn "$test_name failed (exit $status) - keeping the previous results"
        [ "$FAIL_FAST" = 1 ] && die "stopping after failed test '$test_name' (--fail-fast)"
        continue
    fi

    if [ ! -f "$result_file" ]; then
        FAILED+=("$test_name (no results written)")
        warn "$test_name finished but wrote no $result_file - keeping the previous results"
        [ "$FAIL_FAST" = 1 ] && die "stopping after failed test '$test_name' (--fail-fast)"
        continue
    fi

    PASSED+=("$test_name")
    # it is no longer a pre-existing (stale) result, so a later --skip-existing
    # run will skip it
    if [ -f "$CAMPAIGN_IGNORE" ]; then
        grep -vxF "raw_results_${test_name}.md" "$CAMPAIGN_IGNORE" >"$CAMPAIGN_IGNORE.tmp" 2>/dev/null || true
        mv "$CAMPAIGN_IGNORE.tmp" "$CAMPAIGN_IGNORE"
    fi
    info "  $test_name done in $(( $(date +%s) - test_start ))s"
done

if [ "$DRY_RUN" = 1 ]; then
    step "Dry run"
    info "would extract results with: $(command -v dart >/dev/null 2>&1 && echo "dart extract_results.dart results" || echo "${DOCKER[*]} run --rm -v $REPO_DIR:/app -w /app --user $(id -u):$(id -g) base_databench dart extract_results.dart results")"
    if [ "$NO_PR" = 1 ]; then
        info "would stop before committing (--no-pr)"
    else
        info "would commit readme.md + results/ on branch '$OUT_BRANCH' and open a PR against '$BASE_BRANCH'"
    fi
    exit 0
fi

[ ${#PASSED[@]} -gt 0 ] ||
    die "no test produced results (all selected tests failed${SKIP_EXISTING:+, or were skipped with --skip-existing}) - nothing to update"

info ""
info "benchmark finished in $(($(date +%s) - RUN_START))s: ${#PASSED[@]} passed, ${#FAILED[@]} failed"
if [ ${#FAILED[@]} -gt 0 ]; then
    for f in "${FAILED[@]}"; do
        warn "failed: $f"
    done
fi

# containers run as root, so the raw results may be root-owned on the host
if find "$RESULTS_DIR" -maxdepth 1 -not -user "$(id -un)" -print -quit | grep -q .; then
    sudo -n chown -R "$(id -u):$(id -g)" "$RESULTS_DIR" 2>/dev/null ||
        warn "some results files are owned by root; fix with: sudo chown -R $(id -u):$(id -g) results"
fi

# ---------------------------------------------------------------------------
# regenerate readme.md from the raw results
# ---------------------------------------------------------------------------
step "Extracting results into readme.md"

if command -v dart >/dev/null 2>&1; then
    (cd "$REPO_DIR" && dart extract_results.dart results)
else
    "${DOCKER[@]}" run --rm --user "$(id -u):$(id -g)" \
        -v "$REPO_DIR:/app" -w /app base_databench \
        dart extract_results.dart results
fi

if [ "$NO_PR" = 1 ]; then
    step "Done (--no-pr)"
    info "readme.md has been regenerated. Review it, then commit and push manually:"
    info "  git add readme.md results && git commit -m 'Update benchmark results ($DEVICE)'"
    exit 0
fi

# ---------------------------------------------------------------------------
# commit, push and open the PR
# ---------------------------------------------------------------------------
step "Opening a pull request"

# a fork pushes to origin but opens the PR against its upstream
PR_ARGS=()
HEAD_SPEC="$OUT_BRANCH"
if [ -z "$PR_REPO" ]; then
    UPSTREAM_URL="$(git -C "$REPO_DIR" config --get remote.upstream.url || true)"
    [ -n "$UPSTREAM_URL" ] && PR_REPO="$(slug "$UPSTREAM_URL")"
fi
if [ -n "$PR_REPO" ] && [ "$PR_REPO" != "$ORIGIN_SLUG" ]; then
    PR_ARGS=(--repo "$PR_REPO")
    HEAD_SPEC="${PR_REPO%%/*}:$OUT_BRANCH"
    info "pull request will target $PR_REPO"
fi

git -C "$REPO_DIR" checkout -b "$OUT_BRANCH"
git -C "$REPO_DIR" add readme.md results

if git -C "$REPO_DIR" diff --cached --quiet; then
    info "no changes to commit - readme.md and results/ are already up to date"
    git -C "$REPO_DIR" checkout "$BRANCH"
    git -C "$REPO_DIR" branch -D "$OUT_BRANCH" >/dev/null
    exit 0
fi

git -C "$REPO_DIR" commit -m "Update benchmark results ($DEVICE)"

git -C "$REPO_DIR" push -u origin "$OUT_BRANCH"

BODY="Automated benchmark results update.

- device: $DEVICE
- commit: https://$GITHUB_HOST/$ORIGIN_SLUG/commit/$(git -C "$REPO_DIR" rev-parse "origin/$BRANCH")
- tests re-run: ${#PASSED[@]} (${PASSED[*]})
- datasets: 5k, $RUN2, $RUN3 posts
- raw data: \`results/\`, tables regenerated by \`extract_results.dart\`"

if [ ${#FAILED[@]} -gt 0 ]; then
    BODY="$BODY
- failed tests (previous results kept): ${FAILED[*]}"
fi

if ! gh pr create "${PR_ARGS[@]+"${PR_ARGS[@]}"}" \
    --base "$BASE_BRANCH" \
    --head "$HEAD_SPEC" \
    --title "Update benchmark results ($DEVICE)" \
    --body "$BODY"; then
    die "failed to create the PR. The results branch '$OUT_BRANCH' was pushed, so you can retry with:
    gh pr create --base $BASE_BRANCH --head $HEAD_SPEC --title 'Update benchmark results ($DEVICE)'"
fi

step "Done"
info "results branch: $OUT_BRANCH"
info "raw results   : $RESULTS_DIR"
