# Self-contained image: Debian 12 + GHC 9.10 + cabal from the official image.
# Debian's own packages are too old on both counts: ghc 9.0 does not accept
# "default-language: GHC2024" (the project sets it) and cabal 3.4 fails
# "cabal update" with "<repo>/root.json does not have enough signatures".
FROM haskell:9.10.3-slim-bookworm

# benchmark harness (+ llvm: the project builds with -fllvm, and GHC 9.10
# accepts LLVM 13-15, so the versioned Debian tools are exposed under the plain
# names GHC looks for)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget xz-utils ca-certificates sudo \
    gcc libc6-dev make llvm-15 && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /usr/bin/llc-15 /usr/local/bin/llc && \
    ln -sf /usr/bin/opt-15 /usr/local/bin/opt && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid
RUN cabal update

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh haskell

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
