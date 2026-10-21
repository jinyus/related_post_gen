# Self-contained image: Debian 12 + pinned c3c release.
FROM debian:12-slim

# benchmark harness (+ libxml2: the c3 compiler links it, gcc: c3c links
# the final binary by shelling out to cc)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo libxml2 \
    gcc libc6-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN wget -q https://github.com/c3lang/c3c/releases/download/v0.7.9/c3-linux.tar.gz -O /tmp/c3.tar.gz && \
    mv /tmp/c3.tar.gz /opt/c3.tar.gz && tar -xzf /opt/c3.tar.gz -C /opt && rm -f /opt/c3.tar.gz
ENV PATH="/opt/c3:$PATH"
RUN c3c --version

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh c3

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
