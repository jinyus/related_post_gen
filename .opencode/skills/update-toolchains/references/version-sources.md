# Version sources

Verify that the exact tag/asset exists **before** editing a Dockerfile. Prefer
the newest stable release; keep an existing dev/weekly/nightly channel if the
image already uses one. Do not move a stable image to an RC/nightly.

## Quick checks

```bash
# Docker Hub tag exists (official images)
curl -s -o /dev/null -w '%{http_code}\n' \
  https://hub.docker.com/v2/repositories/library/<repo>/tags/<tag>

# Any asset/download URL exists
curl -sIL -o /dev/null -w '%{http_code}\n' '<url>'

# Latest GitHub release (works only when the repo publishes "latest")
curl -fsSL https://api.github.com/repos/<owner>/<repo>/releases/latest |
  python3 -c 'import sys,json; d=json.load(sys.stdin); print(d["tag_name"], d["published_at"])'

# GitHub tags (use when releases/latest is 404, e.g. Nim)
curl -fsSL 'https://api.github.com/repos/<owner>/<repo>/tags?per_page=20' |
  python3 -c 'import sys,json; print([x["name"] for x in json.load(sys.stdin)])'
```

## Image → runtime → source

| Image | Runtime(s) | Latest source / command |
|---|---|---|
| `go` | Go | `https://go.dev/dl/?mode=json` (first stable entry) |
| `rust` | Rust | `https://api.github.com/repos/rust-lang/rust/releases/latest` |
| `v` | V | `https://api.github.com/repos/vlang/v/releases/latest`; release `v_linux.zip` |
| `dotnet` | .NET SDK, C#, F# | `https://api.github.com/repos/dotnet/sdk/releases/latest`; image `mcr.microsoft.com/dotnet/sdk:<ver>` |
| `odin` | Odin | GitHub releases; newest `dev-YYYY-MM` (keep the dev channel) |
| `zig` | Zig | `https://ziglang.org/download/index.json`; newest stable key, exclude `master` |
| `d` | D / LDC | `https://api.github.com/repos/ldc-developers/ldc/releases/latest`; asset `ldc2-<ver>-linux-x86_64.tar.xz` |
| `crystal` | Crystal | `https://api.github.com/repos/crystal-lang/crystal/releases/latest`; image `crystallang/crystal:<ver>` |
| `base` | Dart, C++ | Dart: `https://storage.googleapis.com/dart-archive/channels/stable/release/latest/VERSION`; image `dart:<ver>` |
| `js` | Node, Deno, Bun | Node: `https://nodejs.org/dist/index.json`; Deno: GitHub `denoland/deno`; Bun: GitHub `oven-sh/bun` |
| `python` | Python, NumPy, Numba | Python latest stable patch from python.org/Docker Hub; check `python:<ver>-slim`; verify numba/numpy/scipy cp3xx wheels on PyPI |
| `java` | Java, GraalVM, Scala Native | sdkman: `curl -fsSL 'https://api.sdkman.io/2/candidates/java/linuxx64/versions/list?installed='`; newest GraalVM Oracle id. Scala Native: GitHub `scala-native/scala-native`; sbt: Maven metadata `org/scala-sbt/sbt`; Scala: Maven metadata `org/scala-lang/scala3-compiler_3` (use a 3.3 LTS patch supported by the plugin) |
| `nim` | Nim | GitHub **tags** `nim-lang/Nim`; newest `v2.x`; asset `https://nim-lang.org/download/nim-<ver>-linux_x64.tar.xz` |
| `ocaml` | OCaml, opam, dune | GitHub `ocaml/ocaml`; Docker `ocaml/opam` tag `debian-13-ocaml-<major.minor>`; verify `ocaml -version` |
| `julia` | Julia | GitHub `JuliaLang/julia`; image `julia:<ver>-bookworm` |

## Per-image notes

- **js**: Node base is pinned exactly (`node:<ver>-bookworm-slim`). Deno
  installer accepts the version as its first argument:
  `curl -fsSL https://deno.land/install.sh | sh -s v<ver>`. Bun accepts a tag:
  `curl -fsSL https://bun.sh/install | bash -s "bun-v<ver>"`.
- **python**: `numba`/`numpy`/`scipy` can lag a brand-new CPython minor. Check
  `https://pypi.org/pypi/<pkg>/json` for cpXY wheels before choosing a new
  minor. A missing wheel means use the newest Python minor that has all three.
- **java**: update `GRAALVM_HOME`/`JAVA_HOME`/`PATH` to the sdkman candidate
  directory. Scala Native 0.5 needs clang 16+; keep the native toolchain in its
  own layer, separate from the harness. Scala Native and sbt versions must be
  compatible with each other and with the Scala 3 LTS patch.
- **nim**: `releases/latest` is 404; use tags. `run.sh` compiles with
  `--cc:clang`, so the image must install `clang` (not only `gcc`).
- **ocaml**: Debian's own OCaml is old (bookworm 4.13, trixie 5.3). Use the
  official `ocaml/opam` image; keep `USER root` and `OPAMROOT` so the harness can
  write `/app` and `/results`.
- **julia**: check whether a committed `Manifest.toml` pins old stdlib/JLL
  versions; refresh it with the new Julia if needed, but keep third-party pins
  unchanged unless they fail.
- **V**: attribute syntax changed in 0.5.x (`[json: ...]` → `@[json: ...]`).
- **Odin**: keep the `dev-YYYY-MM` channel; `run.sh` uses `-o:aggressive`.
- **Zig**: 0.17 moved file/reader/writer/time/thread APIs to `std.Io`; port
  both `zig/` and `zig_con/` if the image serves both.
- **D**: keep the LDC tarball's `dub` first on `PATH`.

## General rules

- Pin exact versions (including patch/minor) rather than floating tags, unless
  the Dockerfile already intentionally tracks a rolling tag.
- If the newest version's tag/asset is missing, use the newest existing one and
  document why.
- If the current pin is already the latest applicable version, do not touch that
  image; it is not part of the work queue.
