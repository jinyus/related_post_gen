# Self-contained image: official CPython 3.15.0 on Debian 13 (trixie). Serves py,
# numpy, numba and numba_con (previously all used the shared Arch "base" image).
# numba/numpy/scipy come from python/requirements.txt at run time, as before;
# numba 0.68.0, numpy 2.5.4 and scipy 1.18.1 all ship cp315 linux wheels.
FROM python:3.15.0-slim

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git time which curl ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --no-cache-dir faker nanoid

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh py

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
