# Self-contained image: Debian 12 + cmake/g++ with Lobster built once at image
# build time (same as the Arch version).
FROM debian:12-slim

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo \
    cmake g++ make libc6-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN git clone --depth 1 https://github.com/aardappel/lobster.git /opt/lobster && \
    cd /opt/lobster/dev && \
    cmake -DCMAKE_BUILD_TYPE=Release -DLOBSTER_ENGINE=OFF -DCMAKE_POLICY_VERSION_MINIMUM=3.5 && \
    make -j"$(nproc)" && rm -rf /opt/lobster/.git
ENV PATH="/opt/lobster/bin:$PATH"
RUN lobster --version || true

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh lobster

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
