# nim : commit 39fbd30.. on devel, 17 Nov 2023
# https://github.com/nim-lang/Nim/tree/39fbd30
RUN export CHOOSENIM_CHOOSE_VERSION=\#39fbd30 && export CHOOSENIM_NO_ANALYTICS=1 && curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -- -y
ENV PATH="$PATH:/root/.nimble/bin"

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh nim
