# Self-contained image: Debian 12 + Alire (Ada) with its own gnat/gprbuild
# toolchain, as the Arch version did.
FROM debian:12-slim

# benchmark harness (+ libc headers: gnatcoll compiles getRSS.c/atomics.c)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates unzip sudo \
    gcc libc6-dev make && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

RUN wget -q https://github.com/alire-project/alire/releases/download/v2.1.1/alr-2.1.1-bin-x86_64-linux.zip -O /tmp/alr.zip && \
    mkdir -p /opt/alr && unzip -q /tmp/alr.zip -d /opt/alr && \
    install -m 755 /opt/alr/bin/alr /usr/local/bin/alr && rm -f /tmp/alr.zip
RUN alr -n toolchain --select gnat_native gprbuild

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo/ada && alr -n build --release

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
