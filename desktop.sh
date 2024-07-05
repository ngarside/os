# This is free and unencumbered software released into the public domain.

rpm-ostree override remove gnome-classic-session gnome-classic-session-xsession

# rpm-ostree override remove gnome-shell-extension-common

rpm-ostree override remove yelp yelp-xsl yelp-libs

flatpak remove org.fedoraproject.MediaWriter org.gnome.Maps

rpm-ostree cleanup --repomd

ostree container commit
