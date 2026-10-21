---
name: Update toolchains
description: Use ONLY when the user explicitly invokes update-toolchains to refresh stale runtime/compiler pins in dockerfiles/*.Dockerfile, verify every changed image in Vercel Sandboxes (or a confirmed local fallback), and open one integration PR.
metadata:
  opencode/autoinvoke: false
disable-model-invocation: true
---

# Update toolchains

This skill is **user-invoked only**. Never apply it opportunistically or from a
scheduled/background turn. Invoke it with `@update-toolchains` or the skill tool.

It refreshes stale compiler/runtime pins, verifies each affected image in its
own sandbox, and produces one integration branch + PR for manual review.

## Contract

- **Only stale pins.** Discover every `dockerfiles/*.Dockerfile`; compare its
  pins to the latest applicable release. Do not rebuild or touch an image whose
  pins are already current. If nothing is stale, stop.
- **Latest stable, preserving channels.** Use the newest stable release. If an
  image already tracks a dev/weekly/nightly channel (for example Odin
  `dev-YYYY-MM`), keep that channel and move to its newest release. Do not jump
  a stable image to an RC/nightly.
- **One branch per image.** Every worker edits its own git worktree and branch.
  Merge successful workers into one integration branch and open one PR.
- **Verify in Vercel Sandbox.** Workers must not build locally. If the sandbox
  CLI is missing or unauthenticated, stop and ask the user before any local
  build.
- **Rolling pool of 8.** At most eight workers/sandboxes at once. When one
  finishes, start the next immediately; never wait for all eight.
- **Minimal source ports.** If a newer compiler breaks a source file, port only
  the API/syntax needed to compile. Preserve the algorithm, data structures,
  output format, and performance intent. Never disable checks or add timing
  shortcuts.
- **Never merge the PR.** Leave it open for the user.
- Every claim in the final report must come from command output. If a test
  fails, say exactly which one and why.

## Read first

1. `AGENT.md` — repo rules, image layout, known toolchain traps.
2. `docker_run.sh` — the authoritative `test → image` map.
3. `run.sh` — the runner for each test, including build flags.
4. `dockerfiles/<image>.Dockerfile` — current pins and comments.
5. `references/version-sources.md` — where to find latest versions.
6. `references/sandbox-recipe.md` — Vercel and local verification details.

## Phase 0 — Preflight

Run these from the repo root and stop on anything unexpected:

```bash
git rev-parse --show-toplevel
git status --short
git fetch origin
git switch main
git pull --ff-only
gh auth status
```

- A dirty tree, a diverged `main`, or unauthenticated `gh` means stop and ask.
  Never stash/discard the user's work.
- Check the sandbox:

```bash
.opencode/skills/update-toolchains/scripts/check-sandbox.sh
```

Exit codes:

| Exit | Meaning | Action |
|---|---|---|
| 0 | Vercel Sandbox CLI found and authenticated | Use sandbox mode |
| 2 | CLI not installed | Stop and tell the user; offer install/auth or local fallback |
| 3 | CLI found but not authenticated/usable | Stop and tell the user; offer login or local fallback |

If the user chooses local mode, detect the engine:

```bash
.opencode/skills/update-toolchains/scripts/detect-engine.sh
```

- `docker` or `podman`: use it only after explicit confirmation.
- `both`: ask which one.
- `none`: stop; no verification is possible.

Warn that local builds are CPU/disk heavy and that the benchmark harness expects
the repo's Docker images. Record the chosen mode; workers must use it.

## Phase 1 — Find stale pins

```bash
.opencode/skills/update-toolchains/scripts/list-image-groups.sh
```

Output is `image<TAB>dockerfile<TAB>tests`. Each line is one work unit; do not
split a shared image across workers.

For each image:

1. Read every version pin in its Dockerfile (base image, tarball URL, installer
   argument, compiler path/ENV).
2. Resolve the latest applicable version using `references/version-sources.md`.
3. Confirm the exact Docker tag/asset exists before planning an edit.
4. Record: image, runtime(s), current pin, target pin, stale yes/no, likely
   source port needed.

Show the user a short table. Only `stale=yes` images go into the queue. If none,
stop.

Group by **image**, not by language: `js.Dockerfile` covers Node/Deno/Bun and
`java.Dockerfile` covers Java/GraalVM/Scala Native, for example.

## Phase 2 — Worktrees

Create one worktree/branch per stale image:

```bash
.opencode/skills/update-toolchains/scripts/create-worktrees.sh <image> [...]
```

Defaults: base `main`, worktree root `/tmp/opencode/rpg-worktrees`, branch
`chore/toolchains-<image>-<date>`. If a branch/worktree already exists, stop and
ask rather than reusing or deleting it.

## Phase 3 — Rolling worker pool (max 8)

Use the `subagent` tool with `agent: general` and `background: true`.

1. Build a FIFO queue of stale image groups.
2. Launch `min(8, queue length)` workers.
3. When a worker completes, record its result and **immediately launch the next
   queued worker**. Do not wait for the other running workers.
4. Never have more than eight running. Vercel allows more sandboxes, but eight
   is this skill's cap to stay inside the free-tier budget.
5. When the queue is empty, wait for the remaining workers.

If the sandbox quota is exhausted, stop launching new workers, let the running
ones finish, and tell the user. Do not silently switch to local builds.

Each worker prompt must contain:

- Its exact worktree and branch.
- The image and the tests from `list-image-groups.sh`.
- Current pins and target versions.
- The selected verification mode and exact command:
  - Vercel:
    `scripts/vercel-run.sh --name rpg-<image>-<epoch> --worktree <wt> --dockerfile dockerfiles/<image>.Dockerfile --tag <image>_test <tests...>`
  - Local:
    `scripts/run-tests.sh --engine <docker|podman> --worktree <wt> --dockerfile dockerfiles/<image>.Dockerfile --tag <image>_test <tests...>`
- The strict rules: no local Docker in Vercel mode, no `AGENT.md`/`readme.md`
  edits, no pushes, only minimal compatibility ports, commit on the branch, and
  report command output.

Use `references/worker-prompt.md` as the template. Do not paste the whole skill
into worker prompts; give workers only their slice.

## Phase 4 — Integrate

After each worker reports:

- Success: verify its worktree is clean and its branch has a commit.
- Failure: keep the worktree for debugging; do not merge. Optionally retry once
  with the failure output in the new prompt.
- Pre-existing failure (fails identically on the old pin): record it as a
  caveat; do not fix it in this PR unless the user asked.

Then:

```bash
git switch main
git pull --ff-only
git switch -c chore/toolchains-<YYYYMMDD-HHMM>
```

Cherry-pick successful worker branches in a stable order (alphabetical image).
Resolve nothing silently: if a cherry-pick conflicts, stop and report.

Update `AGENT.md` centrally for every changed pin. Keep its existing wording and
only touch the version references. Then:

```bash
git diff main --check
git diff main --stat
git log --oneline main..HEAD
```

Push the integration branch and open one PR with
`references/pr-template.md` as the body. Use `gh pr create --base main`. If the
T3 `link_pull_request` tool is available, link the PR immediately. Do not merge.

## Phase 5 — Cleanup

- Remove every Vercel sandbox created for the run:
  `sandbox remove <name>` (or `sbx remove`).
- Remove successful worktrees only after their commits are on the integration
  branch: `git worktree remove <path>`.
- Keep failed worktrees/branches for debugging unless the user says otherwise.
- Remove temp tarballs under `/tmp/opencode` or `/tmp`.
- Leave the repo on the integration branch.

## Failure playbook

| Symptom | Action |
|---|---|
| Docker tag/version absent | Pick the newest existing version below it; document why |
| Compiler breaks source | Minimal API/syntax port; rerun; if impossible, fail the worker |
| 45-minute sandbox cap | Rerun that worker in a persistent sandbox with the same disk; clean snapshots after |
| Test fails only on new pin | Capture the traceback; try a minimal port; otherwise fail the worker |
| Test fails on old and new pin | Pre-existing; document, do not fix unless asked |
| Vercel quota/creation error | Stop launching; keep running workers; report the exact error |
| `gh` push/PR failure | Leave the local integration branch intact; report the command/error |

## Final report

Include:

- Table: image, runtime(s), old pin, new pin, verified tests.
- Minimal source ports and why they were needed.
- Any pre-existing failures or caveats.
- PR URL and integration branch.
- Sandboxes/worktrees removed or left behind.

Do not claim a test passed unless the worker's output shows
`Success: ... is valid!` or an equivalent zero exit code.
