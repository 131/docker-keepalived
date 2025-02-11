FROM alpine:3.12

ARG KEEPALIVED_VERSION=2.0.20

RUN apk add --no-cache  keepalived~${KEEPALIVED_VERSION} nano curl

ENTRYPOINT keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console --log-detail --dump-conf
LABEL "org.opencontainers.image.version"="2.0.21"
