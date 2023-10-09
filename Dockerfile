FROM archlinux:base

WORKDIR /app

# Update package repository
RUN pacman -Syu --noconfirm

# Install necessary tools for downloading and installing other programs
RUN pacman -S --noconfirm wget unzip sudo base-devel git

RUN pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && sudo makepkg -si && cd ..

RUN yay --noconfirm -S aur/odin
RUN yay --noconfirm -S extra/hyperfine
RUN yay --noconfirm -S extra/rustup
RUN yay --noconfirm -S extra/go
RUN yay --noconfirm -S extra/dotnet-sdk
RUN yay --noconfirm -S extra/crystal
RUN yay --noconfirm -S extra/zig
RUN yay --noconfirm -S extra/julia
RUN yay --noconfirm -S extra/dart
RUN yay --noconfirm -S aur/swift-bin
RUN yay --noconfirm -S extra/nodejs
RUN yay --noconfirm -S aur/bunjs-bin
RUN yay --noconfirm -S extra/deno
RUN yay --noconfirm -S extra/jre17-openjdk
RUN yay --noconfirm -S extra/maven
RUN yay --noconfirm -S aur/graal-llvm-jdk17-bin
RUN yay --noconfirm -S extra/nim
RUN yay --noconfirm -S extra/opam
RUN yay --noconfirm -S extra/dune
RUN yay --noconfirm -S extra/lua51
RUN yay --noconfirm -S extra/luajit
RUN yay --noconfirm -S extra/luarocks
RUN yay --noconfirm -S extra/luasocket
RUN python -m pip install faker --break-system-packages && python -m pip install nanoid --break-system-packages

COPY start.sh /start.sh

# Set the benchmark script as the entrypoint
ENTRYPOINT ["/start.sh"]
