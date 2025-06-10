FROM docker.io/archlinux:multilib-devel

RUN pacman -Syu --noconfirm && pacman -S node python rustup && rustup default stable && cargo install hyper-mcp

ENTRYPOINT [ "/usr/bin/bash" ]
