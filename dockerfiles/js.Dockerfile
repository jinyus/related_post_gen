# Self-contained image: official Node 26 on Debian 12 + deno and bun (their own
# installers, installed for root instead of the Arch "builduser").
FROM node:26.12.0-bookworm-slim

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl ca-certificates unzip && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN curl -fsSL https://deno.land/install.sh | sh -s v2.9.7
RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.4.3"

ENV DENO_INSTALL=/root/.deno
ENV BUN_INSTALL=/root/.bun
ENV PATH="/root/.deno/bin:/root/.bun/bin:$PATH"

RUN node --version && deno --version && bun --version

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh node

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
