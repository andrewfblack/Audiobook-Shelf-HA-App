# Audiobookshelf Add-on

## Version 1.0.2

This release removes the custom `run.sh` wrapper and allows the upstream Audiobookshelf container to start normally.

## Configuration

```yaml
port: 13378
```

## Notes

- `init: false` is required because the upstream image already includes its own init system.
- `media` and `share` are mapped into the add-on.
- If you publish this repo to GitHub, update the root `repository.yaml` URL first.
