RUN pacman -S --noconfirm --needed cmake
RUN git clone https://github.com/aardappel/lobster.git /home/builduser/lobster
RUN cd /home/builduser/lobster/dev && cmake -DCMAKE_BUILD_TYPE=Release -DLOBSTER_ENGINE=OFF && make -j8
ENV PATH="$PATH:/home/builduser/lobster/bin"
