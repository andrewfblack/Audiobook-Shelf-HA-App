#!/usr/bin/with-contenv bashio

PORT=$(bashio::config 'port')

export PORT=$PORT
export CONFIG_PATH=/config
export METADATA_PATH=/config/metadata

exec node server.js
