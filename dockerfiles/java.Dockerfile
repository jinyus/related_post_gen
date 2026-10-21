# Self-contained image: Debian 12 + GraalVM for JDK 25 (as the JDK) + maven + sbt + clang.
# Serves java, java_con, java_graal, java_graal_con and scala_native.
# sdkman is kept from the Arch version - it works fine on Debian. clang-16 is
# the Scala Native 0.5 toolchain (Debian 12's default clang 14 miscompiles its
# runtime); gcc + zlib headers/libs are for GraalVM native-image.
FROM debian:12-slim

# benchmark harness
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip time which curl ca-certificates zip unzip maven && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --break-system-packages --no-cache-dir faker nanoid

# Java / Scala Native native toolchain, kept in its own layer so the harness
# layer above can be reused by the other Debian-based images and stays cached
# when this toolchain changes. clang-16 is required by Scala Native 0.5
# (Debian 12's default clang 14 miscompiles its runtime); gcc and the zlib
# headers/libs are for GraalVM native-image.
RUN apt-get update && apt-get install -y --no-install-recommends \
    clang-16 lld-16 gcc libc6-dev zlib1g-dev && \
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 100 && \
    update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-16 100 && \
    update-alternatives --install /usr/bin/ld.lld ld.lld /usr/bin/ld.lld-16 100 && \
    rm -rf /var/lib/apt/lists/*

RUN curl -s "https://get.sdkman.io" | bash
RUN bash -c "source /root/.sdkman/bin/sdkman-init.sh && sdk install java 25.4.4+1-graal && sdk install sbt"

ENV GRAALVM_HOME=/root/.sdkman/candidates/java/25.4.4+1-graal
ENV JAVA_HOME=/root/.sdkman/candidates/java/25.4.4+1-graal
ENV PATH="/root/.sdkman/candidates/java/25.4.4+1-graal/bin:/root/.sdkman/candidates/sbt/current/bin:$PATH"

RUN java -version

#precompile
RUN git clone https://github.com/jinyus/related_post_gen.git /tmp/repo && cd /tmp/repo && ./run.sh java

WORKDIR /app
RUN mkdir -p /results
VOLUME /results
ENV GIT_PAT="" GIT_USER="zupat" GIT_EMAIL="zupat@users.noreply.github.com" \
    GIT_REPO="https://github.com/zupat/related_post_gen.git" GIT_REPO_NAME="related_post_gen" \
    TEST_NAME="all" BRANCH="main" DEVICE="Workflow-VM-2vCPU-7GBram" RUN2="20000" RUN3="60000"
COPY docker_start.sh /docker_start.sh
CMD ["/docker_start.sh"]
