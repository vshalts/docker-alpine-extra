FROM alpine:latest

MAINTAINER Vadim Shalts <vshalts@gmail.com>

RUN apk add --update ca-certificates curl

RUN mkdir /app && chown nobody:nobody /app

USER nobody
WORKDIR /app
