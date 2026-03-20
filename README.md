# Audiobookshelf Home Assistant Add-on

This repository provides a Home Assistant add-on for running **Audiobookshelf** inside Home Assistant.

## 📦 Installation

1. Go to **Home Assistant → Settings → Add-ons → Add-on Store**
2. Click the **⋮ (three dots)** in the top right
3. Click **Repositories**
4. Add this repository URL:

   ```
   https://github.com/YOUR_USERNAME/audiobookshelf-ha
   ```

5. Click **Add**
6. Find **Audiobookshelf** in the add-on store and install it

## 🚀 Features

- Runs Audiobookshelf inside Home Assistant
- Uses Home Assistant ingress (no port needed)
- Persistent storage for config and metadata
- Access media from `/media` and `/share`

## ⚙️ Configuration

Example config:

```yaml
port: 13378
log_level: info
```

## 📁 Media Setup

Place your files here:

- `/media/audiobooks`
- `/media/podcasts`
- `/media/books`

## ⚠️ Notes

- First startup may take a bit
- This is an early version — feedback welcome!

## 🛠️ Future Improvements

- Better UI config options
- Backup/restore tools
- Multi-library presets

---
Built for G&B Homeschool + GBMC ecosystem 🚀
