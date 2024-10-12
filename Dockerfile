FROM archlinux:base

# ATTENTION:
# add new install to the end to prevent cache busting

# Update package repository
RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm --needed wget unzip sudo base-devel git clang llvm python python-pip pypy3 ncurses gcc hyperfine rustup crystal zig dart nodejs deno maven opam dune lua51 luajit luarocks libedit github-cli less r time racket ruby sbcl

# user needed to install aur packages
RUN useradd -ms /bin/bash builduser

RUN echo "builduser ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

WORKDIR /app

RUN curl -s "https://get.sdkman.io" | bash

RUN bash -c "source /root/.sdkman/bin/sdkman-init.sh && sdk install java 21-graal && sdk install sbt"

ENV GRAALVM_HOME=/root/.sdkman/candidates/java/21-graal
ENV JAVA_HOME=/root/.sdkman/candidates/java/21-graal
ENV PATH=$PATH:$GRAALVM_HOME/bin:$JAVA_HOME/bin
ENV PATH=$PATH:/root/.sdkman/candidates/sbt/current/bin

# install dotnet
RUN su -c "git clone https://aur.archlinux.org/dotnet-core-bin.git /home/builduser/dotnet" builduser

RUN su -c "cd /home/builduser/dotnet && makepkg -si --noconfirm --needed --noprogressbar" builduser

# install bunjs
RUN su -c "curl -fsSL https://bun.sh/install | bash" builduser

ENV BUN_INSTALL="/home/builduser/.bun"
ENV PATH=$BUN_INSTALL/bin:$PATH

# install swift
RUN wget https://download.swift.org/swift-5.9-release/ubuntu2204/swift-5.9-RELEASE/swift-5.9-RELEASE-ubuntu22.04.tar.gz -O /home/builduser/swift.tar.gz

RUN tar -xvf /home/builduser/swift.tar.gz -C /home/builduser && rm /home/builduser/swift.tar.gz && export PATH=/home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin:$PATH

# install odin
RUN wget 'https://github.com/odin-lang/Odin/releases/download/dev-2023-12/odin-ubuntu-amd64-dev-2023-12.zip' -O /home/builduser/odin.zip

RUN unzip /home/builduser/odin.zip -d /home/builduser/odin

# install vlang
RUN wget 'https://github.com/vlang/v/releases/download/weekly.2023.40.1/v_linux.zip' -O /home/builduser/v.zip

# install rebars for elang
RUN su -c "git clone https://aur.archlinux.org/rebar3.git /home/builduser/rebar3" builduser

RUN su -c "cd /home/builduser/rebar3 && makepkg -si --noconfirm --needed --noprogressbar" builduser

RUN unzip /home/builduser/v.zip -d /home/builduser/v

ENV PATH="/home/builduser/odin:/home/builduser/v/v:/home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin:${PATH}"

RUN pip install faker nanoid --break-system-packages

RUN rustup toolchain install stable

RUN opam init -y -a

# for odin
RUN ln -s /usr/lib/libedit.so /usr/lib/libedit.so.2

# for swift
RUN ln -s /usr/lib/libncursesw.so.6 /usr/lib/libncurses.so.6

RUN chmod +x /home/builduser/odin/odin && odin version && v version && swift --version && java --version

# nim : commit 39fbd30.. on devel, 17 Nov 2023
# https://github.com/nim-lang/Nim/tree/39fbd30
RUN export CHOOSENIM_CHOOSE_VERSION=\#39fbd30 && export CHOOSENIM_NO_ANALYTICS=1 && curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -- -y
ENV PATH="$PATH:/root/.nimble/bin"
RUN cp /usr/lib/LLVMgold.so /home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/lib/LLVMgold.so

# install julia
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.0-linux-x86_64.tar.gz -O /home/builduser/julia.tar.gz
RUN tar zxvf /home/builduser/julia.tar.gz -C /home/builduser/
ENV PATH="$PATH:/home/builduser/julia-1.11.0/bin"

# install lein for clojure and stack for haskell
RUN pacman -S --noconfirm --needed leiningen stack

# install lobster
RUN pacman -S --noconfirm --needed cmake
RUN git clone https://github.com/aardappel/lobster.git /home/builduser/lobster
RUN cd /home/builduser/lobster/dev && cmake -DCMAKE_BUILD_TYPE=Release -DLOBSTER_ENGINE=OFF && make -j8
ENV PATH="$PATH:/home/builduser/lobster/bin"

# use global versions
RUN rm /home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin/clang
RUN rm /home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin/llvm*

# install go
RUN wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz
ENV PATH="$PATH:/usr/local/go/bin"

# install ldc2
RUN wget https://github.com/ldc-developers/ldc/releases/download/v1.36.0/ldc2-1.36.0-linux-x86_64.tar.xz
RUN rm -rf /usr/local/ldc2* && tar -C /usr/local -xvf ldc2-1.36.0-linux-x86_64.tar.xz
ENV PATH="$PATH:/usr/local/ldc2-1.36.0-linux-x86_64/bin"

# install neat
RUN wget https://github.com/Neat-Lang/neat/releases/download/v0.5.2/neat-v0.5.2-llvm.tar.xz
RUN tar -C /home/builduser -xvf neat-v0.5.2-llvm.tar.xz && rm neat-v0.5.2-llvm.tar.xz

# neat build expects clang-15 and llvm bins to be in /usr/lib/llvm/15/bin/
RUN mkdir -p /usr/lib/llvm/15/bin/ && cp /usr/sbin/llvm* /usr/lib/llvm/15/bin/
RUN cp /usr/sbin/clang-16 /usr/sbin/clang-15

RUN cd /home/builduser/neat-v0.5.2-llvm && ./build.sh
ENV PATH="$PATH:/home/builduser/neat-v0.5.2-llvm"

#install r deps // doesn't work, need to manually install deps
#RUN su -c "git clone https://aur.archlinux.org/r-fastmap.git  /home/builduser/rfastmap" builduser
#RUN su -c "git clone https://aur.archlinux.org/r-jsonlite.git  /home/builduser/rjsonlite" builduser

#RUN su -c "cd /home/builduser/rfastmap && makepkg -si --noconfirm --needed --noprogressbar" builduser
#RUN su -c "cd /home/builduser/rjsonlite && makepkg -si --noconfirm --needed --noprogressbar" builduser

# install inko
RUN su -c "git clone https://aur.archlinux.org/inko.git /home/builduser/inko" builduser

RUN su -c "rustup default stable && cd /home/builduser/inko && makepkg -si --noconfirm --needed --noprogressbar" builduser

RUN rm *.tar.* && rm /home/builduser/*.zip && rm /home/builduser/*.tar.*

# for common lisp
RUN cd /tmp && wget https://beta.quicklisp.org/quicklisp.lisp && echo "(load \"quicklisp.lisp\") (quicklisp-quickstart:install :path \"/opt/quicklisp\") (ql::without-prompting (ql:add-to-init-file))" | sbcl && cp $HOME/.sbclrc /etc/sbclrc

RUN mkdir -p /results

# install ghcup for ghc and cabal
RUN su -c "git clone https://aur.archlinux.org/ghcup-hs-bin.git /home/builduser/ghcup" builduser
RUN su -c "cd /home/builduser/ghcup && makepkg -si --noconfirm --needed --noprogressbar" builduser
RUN ghcup install ghc 9.8.1
RUN ghcup set ghc 9.8.1
RUN ghcup install cabal 3.10.2.1
RUN ghcup set cabal 3.10.2.1
ENV PATH=$PATH:/root/.ghcup/bin
RUN cabal update

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
