## 1.0.6
- Re-enabled Home Assistant ingress
- Set ingress_port to 80
- Set ingress_entry to /audiobookshelf
- Enabled ingress_stream
- Kept explicit Audiobookshelf environment variables
- Kept init: false for upstream s6 compatibility

## 1.0.5
- Explicitly set HOST=0.0.0.0
- Explicitly set PORT=80
- Set CONFIG_PATH to /data/config
- Set METADATA_PATH to /data/metadata
- Set BACKUP_PATH to /data/metadata/backups
- Added watchdog on tcp://[HOST]:[PORT:80]

## 1.0.4
- Removed Home Assistant ingress
- Added standard webui configuration
- Exposed container port 80 on host port 13378
- Kept init: false for upstream s6-based container compatibility
