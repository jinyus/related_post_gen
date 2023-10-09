FROM archlinux:base

# Update package repository
RUN pacman -Syu --noconfirm

# Install necessary tools for downloading and installing other programs
RUN pacman -S --noconfirm --needed wget unzip sudo base-devel git go jdk17-openjdk clang llvm python python-pip ncurses gcc llvm hyperfine rustup dotnet-sdk crystal zig julia dart nodejs deno maven nim opam dune lua51 luajit luarocks libedit

RUN useradd -ms /bin/bash builduser

RUN echo "builduser ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

WORKDIR /app

# install graalvm
RUN su -c "git clone https://aur.archlinux.org/jdk17-graalvm-bin.git /home/builduser/jdk17-graalvm-bin" builduser

RUN su -c "cd /home/builduser/jdk17-graalvm-bin && makepkg -si --noconfirm --needed --noprogressbar" builduser

# install graalvm-llvm
RUN su -c "git clone https://aur.archlinux.org/graal-llvm-jdk17-bin.git /home/builduser/graal" builduser

RUN su -c "cd /home/builduser/graal && makepkg -si --noconfirm --needed --noprogressbar" builduser

# install bunjs
RUN su -c "git clone https://aur.archlinux.org/bunjs-bin.git /home/builduser/bunjs" builduser

RUN su -c "cd /home/builduser/bunjs && makepkg -si --noconfirm --needed --noprogressbar" builduser

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

RUN chmod +x /home/builduser/odin/odin && odin version && v version && swift --version

COPY docker_start.sh /docker_start.sh

# Set the benchmark script as the entrypoint
CMD ["/docker_start.sh"]
