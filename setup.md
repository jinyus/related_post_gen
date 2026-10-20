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
