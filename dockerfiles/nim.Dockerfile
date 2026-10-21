# Self-contained image: Debian 12 + pinned Nim 2.2.12 (the code needs 2.x,
# which is newer than Debian's 1.6 package).
FROM debian:12-slim

# benchmark harness (+ gcc: nim compiles to C, clang: run.sh and nim_con's
# build.sh pass --cc:clang, xz-utils unpacks the .tar.xz)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo \
    gcc clang libc6-dev xz-utils && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN wget -q https://nim-lang.org/download/nim-2.2.12-linux_x64.tar.xz -O /tmp/nim.tar.xz && \
    tar -C /opt -xf /tmp/nim.tar.xz && rm -f /tmp/nim.tar.xz && \
    ln -sf /opt/nim-2.2.12/bin/nim /usr/local/bin/nim && \
    ln -sf /opt/nim-2.2.12/bin/nimble /usr/local/bin/nimble
ENV PATH="/opt/nim-2.2.12/bin:$PATH"
RUN nim --version | head -1

#precompile (best effort: if the bundled nimble drops dependency paths during
# "nimble build", as newer nimble releases do, run.sh's build_nim_related
# fallback still works)
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && \
    cd /tmp/repo && (./run.sh nim || echo "WARNING: nim precompile failed; continuing")

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
