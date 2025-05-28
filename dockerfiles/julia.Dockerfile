# install julia
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.0-linux-x86_64.tar.gz -O /home/builduser/julia.tar.gz
RUN tar zxvf /home/builduser/julia.tar.gz -C /home/builduser/
ENV PATH="$PATH:/home/builduser/julia-1.11.0/bin"

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh julia
