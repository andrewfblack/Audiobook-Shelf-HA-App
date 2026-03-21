## 1.0.7
- Added internal nginx proxy for ingress
- Set ingress_port to 8099
- Redirected / to /audiobookshelf/
- Proxied /audiobookshelf/ to Audiobookshelf on 127.0.0.1:80
- Forwarded WebSocket upgrade headers
- Set HOST=127.0.0.1 and PORT=80
- Kept init: false for upstream s6 compatibility

## 1.0.6
- Re-enabled Home Assistant ingress
- Set ingress_port to 80
- Set ingress_entry to /audiobookshelf
- Enabled ingress_stream

## 1.0.5
- Explicitly set HOST=0.0.0.0
- Explicitly set PORT=80
- Set CONFIG_PATH to /data/config
- Set METADATA_PATH to /data/metadata
- Set BACKUP_PATH to /data/metadata/backups
