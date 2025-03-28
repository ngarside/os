# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-silverblue:41

COPY ./la.sh /usr/etc/profile.d/la.sh
COPY ./setup.sh /tmp/setup
COPY ./Mountains.png /usr/share/backgrounds/custom/mountains.png

RUN chmod +x /tmp/setup && /tmp/setup
