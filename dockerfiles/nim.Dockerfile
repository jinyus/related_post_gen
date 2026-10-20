RUN pacman -S --noconfirm --needed nim

#precompile
# Best effort: this clones upstream, whose nim build is currently broken with
# nimble 0.24 (it drops dependency paths during "nimble build"). Installing the
# dependencies first still warms ~/.nimble/pkgs2 for the run inside the
# container, which is the part that matters.
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && \
    cd /tmp/repo && \
    (./run.sh nim || echo "WARNING: nim precompile failed (upstream build); continuing")
