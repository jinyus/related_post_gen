FROM archlinux:base

# Update package repository
RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm --needed wget unzip sudo base-devel git clang llvm python python-pip pypy3 ncurses gcc dart libedit github-cli less time

# user needed to install aur packages
RUN useradd -ms /bin/bash builduser

RUN echo "builduser ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

WORKDIR /app

RUN pip install faker nanoid --break-system-packages

RUN rustup toolchain install stable

# install ldc2
RUN wget https://github.com/ldc-developers/ldc/releases/download/v1.36.0/ldc2-1.36.0-linux-x86_64.tar.xz
RUN rm -rf /usr/local/ldc2* && tar -C /usr/local -xvf ldc2-1.36.0-linux-x86_64.tar.xz
ENV PATH="$PATH:/usr/local/ldc2-1.36.0-linux-x86_64/bin"

# location to write the raw results
VOLUME /results

# you token that will be used to authenticate your fork
ENV GIT_PAT=""

ENV GIT_USER="jinyus"
ENV GIT_EMAIL="jinyus@users.noreply.github.com"

# the repo that will be clone. Most likely your fork
ENV GIT_REPO="https://github.com/jinyus/related_post_gen.git"

# incase you use a different name for your fork
ENV GIT_REPO_NAME="related_post_gen"

ENV TEST_NAME="all"

ENV BRANCH="main"

ENV DEVICE="Workflow-VM-2vCPU-7GBram"

ENV RUN2="20000"

ENV RUN3="60000"

COPY docker_start.sh /docker_start.sh

CMD ["/docker_start.sh"]
