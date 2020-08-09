FROM ubuntu:latest
LABEL maintainer="Carlos Castaño <calbertts@gmail.com>"

ENV QUICKJS_VERSION="2020-07-05"
ENV QUICKJS_TAR="https://bellard.org/quickjs/quickjs-${QUICKJS_VERSION}.tar.xz"

ADD $QUICKJS_TAR .

RUN apt-get update && apt-get install -y build-essential libc6-dev libc6-dev-i386 bash

RUN tar Jxf quickjs-${QUICKJS_VERSION}.tar.xz && cd quickjs-${QUICKJS_VERSION} && make install

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

