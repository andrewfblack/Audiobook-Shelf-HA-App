# Audiobookshelf Add-on

## Version 1.0.7

This release adds an internal nginx reverse proxy for Home Assistant ingress.

### How it works

- Audiobookshelf runs on `127.0.0.1:80`
- nginx runs on `0.0.0.0:8099`
- Home Assistant ingress connects to port `8099`
- nginx redirects `/` to `/audiobookshelf/`
- nginx proxies `/audiobookshelf/` to Audiobookshelf
- WebSocket upgrade headers are passed through

### Runtime environment

- `HOST=127.0.0.1`
- `PORT=80`
- `CONFIG_PATH=/data/config`
- `METADATA_PATH=/data/metadata`
- `BACKUP_PATH=/data/metadata/backups`

### Notes

This is the first ingress-proxy build. If it still does not load, the next thing to inspect is whether Audiobookshelf returns redirects or asset URLs that still conflict with Home Assistant's dynamic ingress base path.
