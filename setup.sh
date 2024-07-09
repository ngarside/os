# This is free and unencumbered software released into the public domain.

rpm-ostree override remove \
	fedora-bookmarks \
	fedora-workstation-backgrounds \
	firefox firefox-langpacks \
	git-core git-core-doc \
	gnome-classic-session \
	gnome-classic-session-xsession \
	gnome-disk-utility \
	gnome-shell-extension-apps-menu \
	gnome-shell-extension-background-logo \
	gnome-shell-extension-common \
	gnome-shell-extension-launch-new-instance \
	gnome-shell-extension-places-menu \
	gnome-shell-extension-window-list \
	gnome-system-monitor \
	gnome-terminal gnome-terminal-nautilus \
	gnome-tour \
	virtualbox-guest-additions \
	yelp \
	yelp-libs \
	yelp-xsl

rpm-ostree install gnome-console

rpm-ostree cleanup --repomd

ostree container commit
