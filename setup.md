### These are the steps to setup the server that's used to run the tests

#### VM Specs: ( AWS c7a.xlarge-4vCPU-8GB-RAM-Ubuntu 24.04 )

1. Install docker
2. Clone repo
3. Build docker image for language
4. Run docker image

### Install docker

```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```

### Clone repo

```bash
git clone https://github.com/zupat/related_post_gen.git && cd related_post_gen
```

### Build docker image for language

```bash
./gen_dockerfile.sh -b <language>
```

This will build a docker image named `<language>_databench`

NB: The compilers for some languages (c++,dart,python) are installed in the base image so you need to run `./gen_dockerfile.sh -b base` for these languages.

### Run docker image

Use the helper script to run the docker image

```bash
./docker_run.sh <language>
```

#### OR

Run the docker image manually

```bash
sudo docker run -it --rm -e TEST_NAME=rust rust_databench
```

For c++,dart and python, use `base_databench`:
```bash
sudo docker run -it --rm -e TEST_NAME=cpp base_databench
```

### Run the tests on a different repo 

eg: To run the tests on your own fork with improvements

```bash
sudo docker run -it --rm -e GIT_REPO='<repo-url>' -e BRANCH='<your-branch-name>' -e TEST_NAME=<test-name> <language>_databench
```

check dockerfiles/base.Dockerfile for more env variables

### Update all results and open a PR (automated)

`update_results.sh` runs the whole flow: it builds every docker image, runs the
benchmark for each test with `./results` mounted at `/results`, regenerates the
tables in readme.md with `extract_results.dart` and opens a PR with the updated
`readme.md` + `results/`.

On a fresh VPS:

```bash
curl -fsSL https://get.docker.com | sudo sh   # install docker (or use --install-deps below)
sudo apt install gh                          # or: sudo pacman -S github-cli
gh auth login                                # the script refuses to start unauthenticated
git clone https://github.com/<you>/related_post_gen.git && cd related_post_gen
./update_results.sh
```

Useful options:

```bash
./update_results.sh go go_ho        # only these tests
./update_results.sh --skip-existing # resume an interrupted run
./update_results.sh --no-pr         # update readme.md, do not open a PR
./update_results.sh --device "AWS c7a.xlarge-4vCPU-8GB-RAM-Ubuntu 24.04"
./update_results.sh --dry-run       # print what would be executed
./update_results.sh --help
```

Notes:

- The benchmark runs for hours, so run it inside `tmux`/`screen` (or with
  `nohup`) and keep the machine otherwise idle - the containers are started one
  at a time so timings stay comparable.
- The containers clone the repository from `origin`, so **the commit that gets
  benchmarked is the one pushed to `origin/<current branch>`**; the script
  verifies this before starting and tells you to `git push` if needed.
- A failed test keeps its previous results and is listed in the PR body; the
  script still opens the PR with the results that did complete (use
  `--fail-fast` to stop at the first failure instead).
- The script leaves you on the `results-<timestamp>` branch after the PR is
  created. The PR targets the default `main` branch (change with `--base`), and
  if an `upstream` remote exists (fork setup) the PR is opened against it.
- Remember to update the "VM Specs" line in readme.md yourself when the machine
  changes.

### Reuse the docker images (GitHub container registry)

Building the language images is the slowest part of a run: 28 images, around
100GB of toolchains (swift alone is 23GB). Publish them once and later runs pull
instead of rebuild:

```bash
# the token from "gh auth login" has no package scopes - add them once:
gh auth refresh -h github.com -s write:packages,read:packages

./ghcr_images.sh push base go rust swift   # pick images, or no names for all
./ghcr_images.sh list                      # local size vs published?
./ghcr_images.sh pull go rust              # on another machine
./ghcr_images.sh latest                     # point :latest at the published tags
```

`latest` is only a convenience alias (`docker pull ghcr.io/<owner>/related_post_gen/go:latest`);
the benchmark always uses the content-hash tag, so an image never drifts from its Dockerfile.

Then make the packages public (GitHub -> your profile -> Packages -> package
settings -> visibility), because private GHCR packages are metered (500MB free,
so a few GB costs money) while public ones are free.

Or build the whole set in CI instead of on a machine: **Actions -> Build images -> Run workflow**
(`gh workflow run build-images.yml`), once with `push` off to verify, then again with
`push` on (`gh workflow run build-images.yml -f push=true`). It is one matrix job per
dockerfile, so 29 builds run in parallel with per-image layer caching.

Each image is tagged with a hash of its generated Dockerfile, so a changed
Dockerfile means a different tag: the pull misses and that image is built locally
instead of silently using a stale one.

`update_results.sh` can do the pull side itself:

```bash
./update_results.sh --pull-images
# or through a wrapper, which also serves the fresh machine:
./scaleway_bench.sh --update-args "--pull-images --skip-existing"Da
```

### Run it on Scaleway Elastic Metal

[`scaleway_bench.sh`](scaleway_bench.sh) is the same flow on a Scaleway
**Elastic Metal** server, driven by `scw` (already authenticated if
`~/.config/scw/config.yaml` exists).

```bash
./scaleway_bench.sh                                  # EM-A215R-HDD, all tests
./scaleway_bench.sh --update-args "--tests go,go_ho" # quick subset
./scaleway_bench.sh status                           # how far along is it?
./scaleway_bench.sh --wait --destroy-when-done       # wait for the PR, then delete
./scaleway_bench.sh destroy                          # delete it manually
```

Defaults and behaviour:

- Offer `EM-A215R-HDD`: **hourly** Elastic Metal (6 cores / 12 threads AMD Ryzen
  PRO 3600, 16 GB RAM, 2x1TB HDD, ~EUR 0.101/h, no setup fee). The script only
  ever picks offers whose `subscription_period` is `hourly`, and prints the
  hourly price before creating anything.
- Zone: the zone configured in `scw` if it has the offer in stock, otherwise the
  first zone that does (`EM-A215R-HDD` is in `fr-par-2` and `nl-ams-1`, but only
  `fr-par-2` had stock - `--zone` to override).
- Image: the newest Ubuntu LTS the offer supports, from
  `scw baremetal os list offer-id=...` (26.04, then 24.04, then 22.04), with the
  machine label following whichever one was installed.
- Delivery + OS installation takes a few minutes (`--timeout`, default 60), then
  the script logs in as the image's default user (`ubuntu`, via sudo), sets
  everything up and starts the benchmark in tmux the same way.
- Billed hourly until you `destroy` it (use `--destroy-when-done`).


