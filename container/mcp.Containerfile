FROM docker.io/archlinux:multilib-devel

RUN pacman -Syu --noconfirm
RUN pacman -S nodejs python rustup uv --noconfirm && rustup default stable && cargo install hyper-mcp && uv tool install mcpo

ENV PATH="/root/.local/bin:/root/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

ENTRYPOINT [ "/usr/bin/bash" ]
