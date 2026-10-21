# Self-contained image: Debian 12 + the Neat toolchain built against LLVM 15.
# Neat 0.5.2 emits LLVM 15 IR and shells out to "clang-15 -opaque-pointers", so
# a real clang/llvm 15 is required (Debian's default is 14). Its build.sh looks
# for llvm-config in /usr/lib/llvm-15/bin, where Debian keeps the versioned
# binaries under /usr/bin/*-15.
FROM debian:12-slim

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo \
    xz-utils clang-15 llvm-15 llvm-15-dev gcc libc6-dev make && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN mkdir -p /usr/lib/llvm/15/bin && \
    ln -sf /usr/bin/llvm-config-15 /usr/lib/llvm/15/bin/llvm-config && \
    llvm-config-15 --version && clang-15 --version | head -1

RUN wget -q https://github.com/Neat-Lang/neat/releases/download/v0.5.2/neat-v0.5.2-llvm.tar.xz -O /tmp/neat.tar.xz && \
    tar -C /opt -xf /tmp/neat.tar.xz && rm -f /tmp/neat.tar.xz
RUN cd /opt/neat-v0.5.2-llvm && ./build.sh
ENV PATH="/opt/neat-v0.5.2-llvm:$PATH"

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh neat

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
