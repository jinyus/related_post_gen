RUN wget https://download.swift.org/swift-5.9-release/ubuntu2204/swift-5.9-RELEASE/swift-5.9-RELEASE-ubuntu22.04.tar.gz -O /home/builduser/swift.tar.gz

RUN tar -xvf /home/builduser/swift.tar.gz -C /home/builduser && rm /home/builduser/swift.tar.gz && export PATH=/home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin:$PATH

ENV PATH="/home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin:${PATH}"

RUN ln -s /usr/lib/libncursesw.so.6 /usr/lib/libncurses.so.6

# comilper looks for libxml2.so.2
RUN cp /usr/lib/libxml2.so /usr/lib/libxml2.so.2

# use global versions
RUN rm /home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin/clang
RUN rm /home/builduser/swift-5.9-RELEASE-ubuntu22.04/usr/bin/llvm*

RUN swift --version

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh swift
