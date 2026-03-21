#!/usr/bin/with-contenv bashio
set -euo pipefail

mkdir -p /data/config /data/metadata /data/metadata/backups

export PORT="${PORT:-13378}"
export CONFIG_PATH="${CONFIG_PATH:-/data/config}"
export METADATA_PATH="${METADATA_PATH:-/data/metadata}"
export BACKUP_PATH="${BACKUP_PATH:-/data/metadata/backups}"
export SOURCE="${SOURCE:-hass-addon}"
# Leave HOST unset so Audiobookshelf listens on all interfaces as recommended.
unset HOST || true

exec /app/audiobookshelf
