RUN pacman -S --noconfirm --needed maven zip

RUN curl -s "https://get.sdkman.io" | bash

RUN bash -c "source /root/.sdkman/bin/sdkman-init.sh && sdk install java 21-graal && sdk install sbt"

ENV GRAALVM_HOME=/root/.sdkman/candidates/java/21-graal
ENV JAVA_HOME=/root/.sdkman/candidates/java/21-graal
ENV PATH=$PATH:$GRAALVM_HOME/bin:$JAVA_HOME/bin
ENV PATH=$PATH:/root/.sdkman/candidates/sbt/current/bin

RUN java -version

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh java
