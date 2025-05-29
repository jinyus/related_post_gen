RUN pacman -S --noconfirm --needed rustup

RUN rustup toolchain install stable

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh rust
