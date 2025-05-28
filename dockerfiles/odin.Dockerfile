# install odin
RUN wget 'https://github.com/odin-lang/Odin/releases/download/dev-2025-04/odin-ubuntu-amd64-dev-2025-04.zip' -O /home/builduser/odin.zip

RUN unzip /home/builduser/odin.zip -d /home/builduser/odin

RUN tar -xzf /home/builduser/odin/dist.tar.gz -C /home/builduser/odin

ENV PATH="/home/builduser/odin/odin-linux-amd64-nightly+2025-04-03/:${PATH}"
