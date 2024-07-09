# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-silverblue:40

COPY ./desktop.sh /tmp/desktop

RUN chmod +x /tmp/desktop && /tmp/desktop
