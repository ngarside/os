# This is free and unencumbered software released into the public domain.

FROM quay.io/fedora/fedora-silverblue:40

RUN rpm-ostree override remove yelp

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

# https://rpmfusion.org/Configuration
# RUN rpm-ostree install \
#   https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
#   https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# https://rpmfusion.org/Howto/NVIDIA#Special_notes
# RUN rpm-ostree install akmod-nvidia xorg-x11-drv-nvidia
# RUN rpm-ostree kargs --append=rd.driver.blacklist=nouveau --append=modprobe.blacklist=nouveau --append=nvidia-drm.modeset=1 # this might not be needed at some point when ostree systems will support the standard way to specify this.
# https://github.com/CheariX/silverblue-akmods-keys

# RUN rpm-ostree install papirus-icon-theme

RUN rpm-ostree cleanup --repomd
RUN ostree container commit
