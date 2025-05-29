RUN pacman -S --noconfirm --needed rustup

RUN su -c "git clone https://aur.archlinux.org/inko.git /home/builduser/inko" builduser

RUN su -c "rustup default stable && cd /home/builduser/inko && makepkg -si --noconfirm --needed --noprogressbar" builduser
