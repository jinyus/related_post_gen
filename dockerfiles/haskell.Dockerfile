# install ghcup for ghc and cabal
RUN su -c "git clone https://aur.archlinux.org/ghcup-hs-bin.git /home/builduser/ghcup" builduser
RUN su -c "cd /home/builduser/ghcup && makepkg -si --noconfirm --needed --noprogressbar" builduser
RUN ghcup install ghc 9.8.1
RUN ghcup set ghc 9.8.1
RUN ghcup install cabal 3.10.2.1
RUN ghcup set cabal 3.10.2.1
ENV PATH=$PATH:/root/.ghcup/bin
RUN cabal update

#compile code
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo/haskell && cabal build
