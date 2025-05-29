FROM docker.io/archlinux:multilib-devel

RUN pacman -Syu --noconfirm && pacman -S shellcheck bash-language-server shfmt bash-completion man-db --noconfirm

ENTRYPOINT [ "/usr/bin/bash" ]
