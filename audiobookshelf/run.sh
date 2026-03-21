#!/usr/bin/with-contenv bashio
set -e

mkdir -p /data/config /data/metadata /data/metadata/backups

export HOST="${HOST:-0.0.0.0}"
export PORT="${PORT:-13378}"
export CONFIG_PATH="${CONFIG_PATH:-/data/config}"
export METADATA_PATH="${METADATA_PATH:-/data/metadata}"
export BACKUP_PATH="${BACKUP_PATH:-/data/metadata/backups}"

cd /app
exec node index.js
