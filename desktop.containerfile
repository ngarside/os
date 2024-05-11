# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-kinoite:40

# RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# RUN rpm-ostree override remove kcharselect

# RUN rpm-ostree override remove kde-partitionmanager

# RUN rpm-ostree override remove kdeconnectd kde-connect kde-connect-libs

# RUN rpm-ostree override remove kfind

# RUN rpm-ostree override remove firewall-config

# RUN rpm-ostree override remove plasma-drkonqi

# RUN rpm-ostree override remove krfb krfb-libs

# RUN rpm-ostree override remove khelpcenter

# RUN rpm-ostree override remove kmousetool

# RUN rpm-ostree override remove kwrite

# RUN rpm-ostree override remove filelight

# RUN rpm-ostree override remove firefox firefox-langpacks

# RUN rpm-ostree override remove plasma-welcome

RUN rpm-ostree install papirus-icon-theme

RUN rpm-ostree cleanup --repomd
RUN ostree container commit
