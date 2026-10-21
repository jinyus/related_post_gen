# Worker prompt template

Fill in every `<...>` and send this to one `general` subagent with
`background: true`. Do not include the whole skill; workers only need their
slice.

---

You are updating **one Docker image** in the related_post_gen benchmark repo.

## Isolation

- Work ONLY in this git worktree: `<WORKTREE>` (branch `<BRANCH>`).
- The main checkout `<REPO_ROOT>` belongs to the parent. Never edit it, switch
  its branch, or push.
- Do not run `git checkout`/`git switch`; you are already on `<BRANCH>`.
- Commit your changes in the worktree when done. Do not push.
- Do NOT edit `AGENT.md`, `readme.md`, or files outside this worktree.

## Scope

- Image: `<IMAGE>` (`dockerfiles/<IMAGE>.Dockerfile`)
- Tests: `<TEST1> <TEST2> ...`
- Current pins: `<CURRENT_PINS>`
- Target versions: `<TARGETS>`
- Only update the pins that are stale. If a pin is already current, leave it.
- If a newer compiler breaks a source file, make the **minimal compatibility
  port** (API/syntax/dependency only). Preserve the algorithm, data structures,
  output format, and performance intent. Never disable checks or add timing
  shortcuts.

## Verification: `<Vercel | LOCAL docker | LOCAL podman>`

Read `<REPO_ROOT>/AGENT.md`, the Dockerfile, `run.sh`, and `docker_run.sh`
first.

### Vercel mode

Do NOT run Docker, Podman, or compilers on the host. Use the provided scripts:

```bash
<REPO_ROOT>/.agents/skills/update-toolchains/scripts/vercel-run.sh \
  --name rpg-<IMAGE>-<EPOCH> \
  --worktree <WORKTREE> \
  --dockerfile dockerfiles/<IMAGE>.Dockerfile \
  --tag <IMAGE>_test \
  <TEST1> <TEST2> ...
```

If the 45-minute session cap interrupts the build, rerun the same command with
`--persistent` (and the same `--name` is fine only after the first sandbox is
gone; otherwise pick a new name).

### Local mode

Only after the parent confirmed local builds:

```bash
<REPO_ROOT>/.agents/skills/update-toolchains/scripts/run-tests.sh \
  --engine <docker|podman> \
  --worktree <WORKTREE> \
  --dockerfile dockerfiles/<IMAGE>.Dockerfile \
  --tag <IMAGE>_test \
  <TEST1> <TEST2> ...
```

## Success criteria

- The verification Dockerfile is the committed one with only the
  `#precompile` clone/run block removed.
- Every test ends with `Success: ... is valid!` (or an equivalent zero exit).
- The worktree is clean after committing.
- Report: old/new pins, files changed, exact commands, per-test results, branch,
  commit SHA, and any caveat. If something cannot pass, state exactly what fails
  and why; do not fake success.

Commit message: `<IMAGE>: update <runtime(s)> to <version(s)>`.
