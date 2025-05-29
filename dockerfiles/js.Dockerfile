RUN pacman -S --noconfirm --needed nodejs deno

RUN su -c "curl -fsSL https://bun.sh/install | bash" builduser

ENV BUN_INSTALL="/home/builduser/.bun"

ENV PATH=$BUN_INSTALL/bin:$PATH

RUN bun --version
