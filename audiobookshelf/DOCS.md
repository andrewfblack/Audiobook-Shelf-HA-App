# Audiobookshelf Add-on

## Version 1.0.4

This release removes Home Assistant ingress and uses a standard exposed web port instead.

## Notes

- The add-on exposes container port 80 on host port 13378.
- `init: false` is kept for compatibility with the upstream s6-based container.
- `media` and `share` are mapped into the add-on.
- If you publish this repo to GitHub, update the root `repository.yaml` URL first.
