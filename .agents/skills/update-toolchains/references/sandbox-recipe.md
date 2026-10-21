# Sandbox recipe

## Vercel Sandbox preflight

The CLI is `sandbox` (alias `sbx`). It may be installed globally by npm/pnpm and
not on `PATH`; `scripts/check-sandbox.sh` searches common locations.

```bash
.agents/skills/update-toolchains/scripts/check-sandbox.sh
# exit 0 = ready; 2 = missing; 3 = found but unauthenticated
```

If missing:

```bash
npm i -g sandbox       # or: pnpm i -g sandbox
sandbox login          # or: sandbox onboard
```

Do this interactively with the user. Never run a browser-login flow from a
background shell.

## Free-tier constraints

- 10 concurrent sandboxes account-wide; this skill self-limits to **8**.
- 45-minute maximum session on Hobby.
- 4 vCPU / 8 GB / 64 GB disk per sandbox (use `--vcpus 4`).
- 5 active CPU-hours and 420 GB-hours of provisioned memory per month.
- Snapshot storage is limited; prefer `--non-persistent` and remove sandboxes.

Each image group gets its own sandbox. Do not run two image builds in one
sandbox: disk and cache pressure make failures ambiguous.

## Per-worker recipe (what `scripts/vercel-run.sh` does)

```bash
SBX=/path/to/sandbox

$SBX create --name rpg-<image>-<epoch> --timeout 45m --vcpus 4 --non-persistent

$SBX exec --sudo rpg-<image> -- bash -lc \
  'apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -y -qq docker.io'

$SBX exec --sudo rpg-<image> -- bash -lc \
  'setsid dockerd >/tmp/dockerd.log 2>&1 < /dev/null &
   for i in $(seq 1 40); do docker info >/dev/null 2>&1 && break; sleep 1; done
   docker info >/dev/null'

tar -C <worktree> --exclude=.git -czf /tmp/work.tgz .
$SBX copy /tmp/work.tgz rpg-<image>:/tmp/work.tgz
$SBX exec rpg-<image> -- bash -lc \
  'rm -rf /work && mkdir -p /work && tar -xzf /tmp/work.tgz -C /work'

$SBX copy <skill>/scripts/run-tests.sh rpg-<image>:/tmp/run-tests.sh
$SBX exec --sudo rpg-<image> -- bash -lc \
  'bash /tmp/run-tests.sh --engine docker --worktree /work \
     --dockerfile /work/dockerfiles/<image>.Dockerfile \
     --tag <image>_test <tests...>'

$SBX remove rpg-<image>
```

## Gotchas

- **PATH inside containers**: run tests with `bash -c "./run.sh <test>"`, not
  `bash -lc`. Login shells source `/etc/profile` and reset `PATH`, losing the
  image's toolchain directory.
- **Precompile block**: the committed Dockerfile clones `main` and runs the
  benchmark. Always build from a copy with the `#precompile` block removed,
  otherwise you test old sources. `run-tests.sh` does this with `awk`.
- **45-minute cap**: if a build is cut off, recreate a persistent sandbox
  (`--persistent`, omit `--non-persistent`) and rerun; Docker layers live on the
  preserved disk. Remove the sandbox and its snapshots afterward.
- **Proxy CA**: containers inside the sandbox do not inherit Vercel's proxy CA.
  If build-time HTTPS (`apt`, `pip`, `cargo`, `go`, `nuget`) fails TLS, mount
  `/etc/pki/ca-trust/source/anchors/vercel-proxy-ca.pem` into the build/run and
  update the container trust store. Report this rather than silently disabling
  TLS verification.
- **Quota**: if `create` fails with a quota/limit error, stop launching new
  workers, let the running ones finish, and report the exact error. Do not fall
  back to local builds without asking.

## Local fallback

Only after the user explicitly confirms. Detect the engine:

```bash
scripts/detect-engine.sh   # docker | podman | both | none
```

- One engine: use it.
- Both: ask which.
- None: stop.

Run the same `scripts/run-tests.sh --engine <engine> ...`. Warn that local
builds are CPU/disk heavy, and that the benchmark numbers are not valid while
other work runs on the machine.

## Cleanup

```bash
sandbox list
sandbox remove <name>
git worktree remove <path>
rm -f /tmp/work.tgz
```

Never leave a running sandbox after a successful run. Keep a failed sandbox
only when the user asks to inspect it.
