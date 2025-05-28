# install rebars for elang
RUN su -c "git clone https://aur.archlinux.org/rebar3-git.git /home/builduser/rebar3" builduser

RUN su -c "cd /home/builduser/rebar3 && makepkg -si --noconfirm --needed --noprogressbar" builduser
