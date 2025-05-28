RUN pacman -S --noconfirm --needed rustup

RUN rustup toolchain install stable
