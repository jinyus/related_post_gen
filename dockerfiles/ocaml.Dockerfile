RUN pacman -S --noconfirm --needed opam dune

RUN opam init -y -a

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh ocaml
