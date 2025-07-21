# install go (as in main Dockerfile)
RUN wget https://go.dev/dl/go1.24.5.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.5.linux-amd64.tar.gz
ENV PATH="$PATH:/usr/local/go/bin"
