# Audiobookshelf Home Assistant Add-on

This repository provides a Home Assistant add-on for running **Audiobookshelf** inside Home Assistant.

## Installation

1. Go to **Home Assistant → Settings → Add-ons → Add-on Store**
2. Click the **three-dot menu** in the top right
3. Click **Repositories**
4. Add your GitHub repository URL:
   `https://github.com/YOUR_USERNAME/audiobookshelf-ha`
5. Click **Add**
6. Find **Audiobookshelf** in the add-on store and install it

## Notes

- Version 1.0.4 removes Home Assistant ingress.
- The add-on now uses a normal exposed Web UI port instead.
- `init: false` remains enabled because the upstream image already uses its own init system.
- Update `repository.yaml` and this README with your real GitHub URL before publishing.

## Web UI

After install, access Audiobookshelf through the Home Assistant add-on page using the Web UI button or directly on the published port.

## Media folders

You can place media inside Home Assistant's mapped folders, such as:
- `/media/audiobooks`
- `/media/podcasts`
- `/media/books`
