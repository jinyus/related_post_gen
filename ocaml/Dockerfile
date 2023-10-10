FROM ocaml/opam:alpine-ocaml-4.13

WORKDIR /app

COPY ./okaml.opam /app/

# RUN opam init
RUN opam install . --deps-only -y

COPY . /app
RUN sudo chown -R opam /app
RUN opam exec -- dune build

FROM alpine
COPY --from=0 /app/_build/default/bin/main.exe .

ENTRYPOINT [ "/main.exe" ]
CMD  [ "/data/posts.json", "/data/related_posts_ocaml.json" ]


