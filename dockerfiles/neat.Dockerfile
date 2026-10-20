RUN wget https://github.com/Neat-Lang/neat/releases/download/v0.5.2/neat-v0.5.2-llvm.tar.xz
RUN tar -C /home/builduser -xvf neat-v0.5.2-llvm.tar.xz && rm neat-v0.5.2-llvm.tar.xz

# neat build expects clang-15 and llvm bins to be in /usr/lib/llvm/15/bin/
RUN mkdir -p /usr/lib/llvm/15/bin/ && cp /usr/sbin/llvm* /usr/lib/llvm/15/bin/
# point clang-15 at whatever clang Arch ships now (it used to be clang-21)
RUN ln -sf "$(command -v clang)" /usr/bin/clang-15 && clang-15 --version | head -1

RUN cd /home/builduser/neat-v0.5.2-llvm && ./build.sh
ENV PATH="$PATH:/home/builduser/neat-v0.5.2-llvm"
