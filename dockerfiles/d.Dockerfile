# install ldc2
RUN wget https://github.com/ldc-developers/ldc/releases/download/v1.40.1/ldc2-1.40.1-linux-x86_64.tar.xz
RUN rm -rf /usr/local/ldc2* && tar -C /usr/local -xvf ldc2-1.40.1-linux-x86_64.tar.xz
ENV PATH="$PATH:/usr/local/ldc2-1.40.1-linux-x86_64/bin"

# comilper looks for libxml2.so.2
RUN cp /usr/lib/libxml2.so /usr/lib/libxml2.so.2

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh d
