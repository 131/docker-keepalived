FROM alpine:3.12

ARG KEEPALIVED_VERSION=2.0.20

RUN apk add --no-cache  keepalived~${KEEPALIVED_VERSION} nano

ENTRYPOINT keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console --log-detail --dump-conf
