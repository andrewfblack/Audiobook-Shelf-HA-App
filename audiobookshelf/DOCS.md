# Audiobookshelf Add-on

## Version 1.0.6

This release uses **Home Assistant ingress** instead of a direct exposed web port.

### Ingress settings

- `ingress: true`
- `ingress_port: 80`
- `ingress_entry: /audiobookshelf`
- `ingress_stream: true`

### Runtime environment

- `HOST=0.0.0.0`
- `PORT=80`
- `CONFIG_PATH=/data/config`
- `METADATA_PATH=/data/metadata`
- `BACKUP_PATH=/data/metadata/backups`

### Notes

- `init: false` is used because the upstream container already uses `s6-overlay`.
- This version is designed specifically around Audiobookshelf's fixed `/audiobookshelf` subfolder support.
- If ingress still fails, the next likely step is adding a tiny internal reverse-proxy layer in front of Audiobookshelf.
