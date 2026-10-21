# Pull request template

Use this as the body passed to `gh pr create --body-file`.

---

## Summary

Bump the runtime/compiler pins for the stale images found on `<DATE>`.

| Image | Runtime(s) | Old | New |
|---|---|---|---|
| `<image>` | `<runtime(s)>` | `<old>` | `<new>` |

## Required source/build changes

- `<image>`: `<minimal port or dependency change and why>`
- None beyond the version pins: `<images>`

## Verification

Each image was built from a copy of its Dockerfile with only the `#precompile`
clone/run block removed, then tested with `bash -c "./run.sh <test>"`.

Passing:

- `<image>`: `<tests>` — all `Success: ... is valid!`

Known pre-existing failures / caveats:

- `<test>`: `<failure>`; reproduced on the old pin, so not caused by this bump.

## Notes

- `AGENT.md` pins were refreshed on the integration branch.
- Benchmark results in `results/` and `readme.md` were not regenerated.
- Sandboxes and temporary worktrees were removed.
