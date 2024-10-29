FROM archlinux:base

# Update package repository
RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm --needed wget unzip sudo base-devel git clang llvm python python-pip pypy3 ncurses gcc dart libedit github-cli less time

# user needed to install aur packages
RUN useradd -ms /bin/bash builduser

RUN echo "builduser ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

WORKDIR /app

RUN pip install faker nanoid --break-system-packages

RUN pacman -S --noconfirm --needed rustup

RUN rustup toolchain install stable

# install inko
RUN su -c "git clone https://aur.archlinux.org/inko.git /home/builduser/inko" builduser

RUN su -c "rustup default stable && cd /home/builduser/inko && makepkg -si --noconfirm --needed --noprogressbar" builduser

#precompile
#RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh julia

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
