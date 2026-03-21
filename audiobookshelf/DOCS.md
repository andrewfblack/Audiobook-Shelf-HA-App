# Audiobookshelf Add-on

## Version 1.0.9

This release uses a direct web port and configures Audiobookshelf to listen on internal port `13378`.

### Runtime environment

- `HOST=0.0.0.0`
- `PORT=13378`
- `CONFIG_PATH=/data/config`
- `METADATA_PATH=/data/metadata`
- `BACKUP_PATH=/data/metadata/backups`

### Notes

- `init: false` is used because the upstream container already uses `s6-overlay`.
- The add-on exposes container port `13378` on host port `13378`.
- `media` and `share` are mapped into the add-on.
