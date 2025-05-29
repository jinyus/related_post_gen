RUN wget 'https://github.com/vlang/v/releases/download/weekly.2025.22/v_linux.zip' -O /home/builduser/v.zip

RUN unzip /home/builduser/v.zip -d /home/builduser/v

ENV PATH="/home/builduser/v/v:${PATH}"

RUN v version
