#!/usr/bin/dumb-init /bin/sh

set -e

# See https://packages.debian.org/stretch/amd64/libjemalloc1/filelist
LD_PRELOAD="/usr/lib/`uname -m`-linux-gnu/libjemalloc.so.1" exec fluentd "$@"
