#!/usr/bin/env bash
# Simple nightly backup of Pi-hole container, if needed
set -e
pct stop 100
vzdump 100 --mode stop --compress zstd --dumpdir /var/lib/vz/dump
pct start 100

