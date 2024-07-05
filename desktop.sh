# This is free and unencumbered software released into the public domain.

rpm-ostree override remove yelp

rpm-ostree cleanup --repomd

ostree container commit
