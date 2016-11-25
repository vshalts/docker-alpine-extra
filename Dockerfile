FROM frolvlad/alpine-glibc:alpine-3.4

MAINTAINER Vadim Shalts <vshalts@gmail.com>

RUN apk add --update ca-certificates curl binutils && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

RUN mkdir /app && chown nobody:nobody /app

COPY dpkg /usr/bin/dpkg

# USER nobody

WORKDIR /app
