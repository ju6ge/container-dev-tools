FROM docker.io/python

RUN pip install cmake-language-server

ENTRYPOINT [ "/usr/bin/bash" ]
