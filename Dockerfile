FROM alpine:latest

MAINTAINER Vadim Shalts <vshalts@gmail.com>

RUN apk add --update ca-certificates curl && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

RUN mkdir /app && chown nobody:nobody /app

# USER nobody

WORKDIR /app
