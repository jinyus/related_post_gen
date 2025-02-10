FROM archlinux:base

# Update package repository
RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm --needed wget unzip sudo base-devel git clang llvm python python-pip pypy3 ncurses gcc dart libedit github-cli less time stack

RUN pacman -S --noconfirm --needed stack

# user needed to install aur packages
RUN useradd -ms /bin/bash builduser

RUN echo "builduser ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

WORKDIR /app

RUN pip install faker nanoid --break-system-packages

# install ghcup for ghc and cabal
RUN su -c "git clone https://aur.archlinux.org/ghcup-hs-bin.git /home/builduser/ghcup" builduser
RUN su -c "cd /home/builduser/ghcup && makepkg -si --noconfirm --needed --noprogressbar" builduser
RUN ghcup install ghc 9.10.1
RUN ghcup set ghc 9.10.1
RUN ghcup install cabal 3.12.1.0
RUN ghcup set cabal 3.12.1.0
ENV PATH=$PATH:/root/.ghcup/bin
RUN cabal update

#compile code
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo/haskell && cabal build

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
