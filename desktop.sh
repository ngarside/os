# This is free and unencumbered software released into the public domain.

rpm-ostree override remove gnome-classic-session gnome-classic-session-xsession

# rpm-ostree override remove gnome-shell-extension-common

rpm-ostree override remove yelp yelp-xsl yelp-libs

rpm-ostree override remove gnome-tour

rpm-ostree override remove gnome-terminal gnome-terminal-nautilus

rpm-ostree override remove firefox firefox-langpacks

rpm-ostree override remove gnome-system-monitor

rpm-ostree override remove gnome-disk-utility

rpm-ostree override remove git-core git-core-doc

rpm-ostree override remove virtualbox-guest-additions

rpm-ostree override remove fedora-bookmarks fedora-workstation-backgrounds

rpm-ostree override remove gnome-shell-extension-common gnome-shell-extension-apps-menu gnome-shell-extension-launch-new-instance gnome-shell-extension-places-menu gnome-shell-extension-window-list gnome-shell-extension-background-logo

rpm-ostree install gnome-console

# flatpak remove --all --delete-data --noninteractive

# gsettings set org.gnome.shell app-picker-layout "[]"

# flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo

rpm-ostree cleanup --repomd

ostree container commit
