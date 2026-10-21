# Self-contained image: Debian 12 + pinned Odin release + clang.
# Replaces the Arch image that was 4.5GB.
FROM debian:12-slim

# benchmark harness (+ clang: Odin compiles through clang at run time)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl ca-certificates xz-utils clang libc6-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

# Two constraints pin this version: run.sh passes -o:aggressive (dev-2023-08
# only knows minimal/size/speed/none) and odin/related.odin calls
# os.read_entire_file_from_filename, which was removed in dev-2026-03.
# dev-2025-12 is the newest release satisfying both.
RUN curl -fsSL https://github.com/odin-lang/Odin/releases/download/dev-2025-12/odin-linux-amd64-dev-2025-12.tar.gz -o /tmp/odin.tar.gz && \
    tar -C /opt -xzf /tmp/odin.tar.gz && rm -f /tmp/odin.tar.gz && \
    mv /opt/odin-linux-*/ /opt/odin
ENV PATH="/opt/odin:$PATH"

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh odin

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
