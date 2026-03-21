## 1.0.8
- Removed Home Assistant ingress again
- Added direct webui configuration
- Added watchdog on tcp://[HOST]:[PORT:80]
- Exposed container port 80 on host port 13378
- Kept explicit Audiobookshelf environment variables
- Kept init: false for upstream s6 compatibility

## 1.0.7
- Added internal nginx proxy for ingress

## 1.0.6
- Re-enabled Home Assistant ingress

## 1.0.5
- Explicitly set HOST=0.0.0.0
- Explicitly set PORT=80
- Set CONFIG_PATH to /data/config
- Set METADATA_PATH to /data/metadata
- Set BACKUP_PATH to /data/metadata/backups
