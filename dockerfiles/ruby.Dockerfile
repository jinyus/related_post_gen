# install downgrade
RUN su -c "git clone https://aur.archlinux.org/downgrade.git /home/builduser/downgrade" builduser

RUN su -c "cd /home/builduser/downgrade && makepkg -si --noconfirm --needed --noprogressbar" builduser

RUN sed -i '/^#IgnorePkg/a IgnorePkg = ruby' /etc/pacman.conf

RUN downgrade 'ruby=3.2.5-2' -- --noconfirm --needed
