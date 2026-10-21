# Self-contained image: Debian 13 + OCaml 5.6 + opam + dune.
# Debian's own OCaml is too old (bookworm ships 4.13, trixie 5.3), so start from
# the official opam image, whose "5.6" tag currently ships a ready-to-use switch
# built by ocaml-variants 5.6.0+trunk (dune and the deps are added below).
FROM ocaml/opam:debian-13-ocaml-5.6

# The upstream image runs as the unprivileged "opam" user, but the harness
# clones the repo into /app, writes results there and copies them to /results,
# so run as root like the other benchmark images and keep using the image's
# opam root (its ENTRYPOINT, "opam exec --", exports the 5.6 switch).
USER root
ENV OPAMROOT=/home/opam/.opam

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl wget ca-certificates sudo \
    m4 pkg-config && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid
RUN opam init -y -a --disable-sandboxing

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh ocaml

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
