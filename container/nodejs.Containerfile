FROM docker.io/node:latest

RUN corepack enable && npm i -g typescript-language-server && npm i -g typescript && npm i -g svelte-language-server

ENTRYPOINT [ "/usr/bin/bash" ]
