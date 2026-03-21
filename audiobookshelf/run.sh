#!/usr/bin/with-contenv bash
set -euo pipefail

mkdir -p /data/config /data/metadata /data/metadata/backups

export CONFIG_PATH="/data/config"
export METADATA_PATH="/data/metadata"
export BACKUP_PATH="/data/metadata/backups"
export PORT="13378"
export SOURCE="hass-addon"

# Audiobookshelf listens on all interfaces when HOST is unset.
unset HOST || true

exec /opt/audiobookshelf/audiobookshelf
