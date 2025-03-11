# This is free and unencumbered software released into the public domain.

set -euo pipefail

# Remove unwanted default packages
rpm-ostree override remove \
	fedora-bookmarks \
	fedora-workstation-backgrounds \
	firefox firefox-langpacks \
	gnome-classic-session \
	gnome-disk-utility \
	gnome-shell-extension-apps-menu \
	gnome-shell-extension-background-logo \
	gnome-shell-extension-common \
	gnome-shell-extension-launch-new-instance \
	gnome-shell-extension-places-menu \
	gnome-shell-extension-window-list \
	gnome-system-monitor \
	gnome-tour \
	yelp \
	yelp-libs \
	yelp-xsl

# Install additional packages
rpm-ostree install \
	azure-cli \
	dotnet-sdk-8.0 \
	dotnet-sdk-9.0 \
	lm_sensors \
	nodejs \
	openssl \
	papirus-icon-theme

# Commit changes
rpm-ostree cleanup --repomd
ostree container commit
