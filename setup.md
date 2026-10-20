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
