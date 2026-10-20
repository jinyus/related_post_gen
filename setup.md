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

### Run it on a Vultr instance

[`vultr_bench.sh`](vultr_bench.sh) provisions the machine, installs everything
on it and starts the benchmark in tmux - the run keeps going if the SSH
connection drops, and you can attach to it whenever you want.

```bash
source ~/.env                 # VULTR_API_KEY (or: export VULTR_API_KEY=...)

./vultr_bench.sh                                  # vbm-4c-32gb + newest Ubuntu LTS, all tests
./vultr_bench.sh --update-args "--tests go,go_ho" # quick subset
./vultr_bench.sh status                           # how far along is it?
./vultr_bench.sh attach                           # tmux attach (or: logs for a tail -f)
./vultr_bench.sh --wait --destroy-when-done       # block until the PR, then delete it
./vultr_bench.sh destroy                          # delete it manually
```

What it does: picks the newest Ubuntu LTS the plan actually accepts (Vultr's
`os list` is account-wide, so 26.04 gets rejected by some bare metal plans and
the script falls back to 24.04, then 22.04 - pass `--os-id` to pin one), uses
the first region the plan is offered in, uploads `~/.ssh/id_rsa.pub` to Vultr,
waits for the machine (bare metal takes 10-20 min), then logs in and installs
docker + gh, authenticates gh with `gh auth token` (or `$GH_TOKEN`), clones this
repo, points the readme's "VM Specs" line at the new machine and starts
`update_results.sh` in a tmux session named `bench`. The device label - and
therefore the PR title/body and the readme line - follows the image that
actually worked.

It drives the account through `vultr-cli` (`plans metal`, `os list`,
`ssh-key list/create`, `bare-metal create|get|list|delete`, all with `-o json`),
so `vultr-cli`, `jq` and `ssh` have to be on your `PATH`; credentials come from
`VULTR_API_KEY` or `~/.vultr-cli.yaml`. `--dry-run` prints the resolved plan,
image and the create command without touching anything.


Things worth knowing:

- The instance is billed while it exists (`vbm-4c-32gb` is ~$0.164/h), so
  `destroy` once the PR is up.
- `--device` sets the label written into the PR and the readme;
  `--no-label-sync` leaves the readme line alone; `--plan`, `--os-id` and
  `--region` pin the machine (useful for comparable numbers over time).
- Re-running it on a tracked instance reuses it, and it refuses to restart a
  benchmark that is still running unless you pass `--force`.
- The PR is opened from the instance by `update_results.sh`, so `gh auth token`
  (or `$GH_TOKEN`) has to work here; the instance installs its own `gh`.

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
  everything up and starts the benchmark in tmux exactly like the Vultr script.
- Billed hourly until you `destroy` it (use `--destroy-when-done`).


