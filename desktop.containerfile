# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-kinoite:40

RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

RUN rpm-ostree override remove khelpcenter

RUN rpm-ostree override remove kmousetool

RUN rpm-ostree override remove kwrite kwrited

RUN rpm-ostree override remove filelight

RUN rpm-ostree override remove firefox firefox-langpacks

RUN rpm-ostree override remove plasma-welcome plasma-welcome-lang

RUN rpm-ostree install papirus-icon-theme

RUN rpm-ostree cleanup --repomd
RUN ostree container commit
