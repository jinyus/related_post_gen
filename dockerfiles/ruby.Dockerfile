# Self-contained image: Debian 12 + Ruby. (The Arch version pinned 3.2 through an
# AUR downgrade tool because 3.3 broke the code; Debian 12 ships 3.1.)
FROM debian:12-slim

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo ruby && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh ruby

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
