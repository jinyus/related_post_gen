# Self-contained image: Debian 12 + pinned LDC (ldc2) + dub.
FROM debian:12-slim

# benchmark harness (+ dub drives the build, libxml2 is linked by ldc,
# xz-utils unpacks the .tar.xz toolchain)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo \
    dub libxml2 gcc libc6-dev xz-utils && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN wget -q https://github.com/ldc-developers/ldc/releases/download/v1.41.0/ldc2-1.41.0-linux-x86_64.tar.xz -O /tmp/ldc.tar.xz && \
    tar -C /opt -xf /tmp/ldc.tar.xz && rm -f /tmp/ldc.tar.xz
ENV PATH="/opt/ldc2-1.41.0-linux-x86_64/bin:$PATH"
RUN ldc2 --version | head -1

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh d

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
