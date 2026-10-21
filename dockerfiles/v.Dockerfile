# Self-contained image: Debian 12 + pinned V compiler (the Arch image used the
# same release zip, just extracted under /home/builduser).
FROM debian:12-slim

# benchmark harness (+ gcc: V compiles to C)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo \
    unzip gcc libc6-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN wget -q 'https://github.com/vlang/v/releases/download/0.5.2/v_linux.zip' -O /tmp/v.zip && \
    unzip -q /tmp/v.zip -d /opt && rm -f /tmp/v.zip
ENV PATH="/opt/v:$PATH"
RUN v version

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh v

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
