# Audiobookshelf Add-on

## What changed in 1.1.0

This build switches from wrapping the upstream Docker container to running the official Audiobookshelf Linux binary directly inside a Home Assistant add-on base image.

That avoids the nested init/supervision problem that can happen when a Docker image already includes its own init system.

## Paths

Persistent data is stored under `/data` inside the add-on:

- Config/database: `/data/config`
- Metadata/cache/logs/downloads: `/data/metadata`
- Backups: `/data/metadata/backups`

Home Assistant also maps these paths for your content:

- `/media`
- `/share`

You can add Audiobookshelf libraries from the web UI using folders inside `/media` or `/share`.

## Install

1. Put this add-on folder in your local add-ons repository.
2. Reload local add-ons in Home Assistant.
3. Build the add-on.
4. Start it.
5. Open `http://HOME_ASSISTANT_IP:13378`

## Notes

- The add-on publishes port `13378` directly.
- `HOST` is intentionally left unset because Audiobookshelf listens on all interfaces when it is unset.
- `ffmpeg` is included for transcoding and audio processing support.
