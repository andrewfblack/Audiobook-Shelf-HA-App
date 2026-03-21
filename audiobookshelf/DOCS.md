# Audiobookshelf Add-on

## Version 1.0.8

This release removes Home Assistant ingress and uses a standard direct web port instead.

### Runtime environment

- `HOST=0.0.0.0`
- `PORT=80`
- `CONFIG_PATH=/data/config`
- `METADATA_PATH=/data/metadata`
- `BACKUP_PATH=/data/metadata/backups`

### Notes

- `init: false` is used because the upstream container already uses `s6-overlay`.
- The add-on exposes container port `80` on host port `13378`.
- `media` and `share` are mapped into the add-on.
