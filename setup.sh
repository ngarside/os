# This is free and unencumbered software released into the public domain.

rpm-ostree override remove \
	gnome-classic-session \
	gnome-classic-session-xsession \
	yelp \
	yelp-xsl \
	yelp-libs \
	gnome-tour \
	gnome-terminal gnome-terminal-nautilus \
	firefox firefox-langpacks \
	gnome-system-monitor \
	gnome-disk-utility \
	git-core git-core-doc \
	virtualbox-guest-additions \
	fedora-bookmarks \
	fedora-workstation-backgrounds \
	gnome-shell-extension-common \
	gnome-shell-extension-apps-menu \
	gnome-shell-extension-launch-new-instance \
	gnome-shell-extension-places-menu \
	gnome-shell-extension-window-list \
	gnome-shell-extension-background-logo

rpm-ostree install gnome-console

rpm-ostree cleanup --repomd

ostree container commit
