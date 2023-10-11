FROM archlinux:base

# Update package repository
RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm --needed wget unzip sudo base-devel git go clang llvm ldc dub python python-pip ncurses gcc llvm hyperfine rustup dotnet-sdk crystal zig julia dart nodejs deno maven nim opam dune lua51 luajit luarocks libedit github-cli less

# user needed to install aur packages
RUN useradd -ms /bin/bash builduser

RUN echo "builduser ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

WORKDIR /app

RUN curl -s "https://get.sdkman.io" | bash

RUN bash -c "source /root/.sdkman/bin/sdkman-init.sh && sdk install java 21-graal"

ENV GRAALVM_HOME=/root/.sdkman/candidates/java/21-graal
ENV JAVA_HOME=/root/.sdkman/candidates/java/21-graal
ENV PATH=$PATH:$GRAALVM_HOME/bin:$JAVA_HOME/bin

# install bunjs
# install bunjs
RUN su -c "curl -fsSL https://bun.sh/install | bash" builduser

ENV BUN_INSTALL="/home/builduser/.bun"
ENV PATH=$BUN_INSTALL/bin:$PATH

# install swift
RUN wget https://download.swift.org/swift-5.9-release/ubuntu2204/swift-5.9-RELEASE/swift-5.9-RELEASE-ubuntu22.04.tar.gz -O /home/builduser/swift.tar.gz

RUN tar -xvf /home/builduser/swift.tar.gz -C /home/builduser && rm /home/builduser/swift.tar.gz && export PATH=/home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin:$PATH

# install odin
RUN wget 'https://github.com/odin-lang/Odin/releases/download/dev-2023-10/odin-ubuntu-amd64-dev-2023-10.zip' -O /home/builduser/odin.zip

RUN unzip /home/builduser/odin.zip -d /home/builduser/odin

# install vlang
RUN wget 'https://github.com/vlang/v/releases/download/weekly.2023.40.1/v_linux.zip' -O /home/builduser/v.zip

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
