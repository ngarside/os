# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-kinoite:39

RUN rpm-ostree install papirus-icon-theme

RUN rpm-ostree cleanup
RUN ostree container commit
