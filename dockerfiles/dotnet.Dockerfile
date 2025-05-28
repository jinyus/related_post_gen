# install dotnet
RUN su -c "git clone https://aur.archlinux.org/dotnet-core-bin.git /home/builduser/dotnet" builduser

RUN su -c "cd /home/builduser/dotnet && makepkg -si --noconfirm --needed --noprogressbar" builduser
