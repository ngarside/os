# Silverblue

> **Do not use this artifact!**

A minimal base image for Fedora Silverblue. This strips out most unnecessary packages (Firefox, desktop backgrounds, etc) while leaving a useable but very minimal desktop base which can be built upon.

> **This is built only for my own use, I don't recommend anyone using artifacts from this repo directly, rather use it as a base to fork and create your own.**

# Installation

```
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/ngarside/silverblue:latest
```

# Upgrading

```
rpm-ostree upgrade
```

# Uninstall All Flatpaks & Data

```
flatpak remove --all --delete-data --noninteractive
```

# License

This is free and unencumbered software released into the public domain.
