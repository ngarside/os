# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-silverblue:40

COPY ./setup.sh /tmp/setup

RUN chmod +x /tmp/setup && /tmp/setup
