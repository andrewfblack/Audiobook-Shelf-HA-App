## 1.1.0
- Rebuilt the add-on around a Home Assistant base image
- Downloads the official Audiobookshelf Linux release during build
- Starts Audiobookshelf with a dedicated run.sh launcher
- Switched startup mode to `application`
- Keeps direct access on port 13378
- Stores config and metadata under `/data`

## 1.0.9
- Switched internal port to 13378
- Updated webui to use [PORT:13378]
- Updated watchdog to use [PORT:13378]
- Exposed container port 13378 on host port 13378
- Set PORT=13378 in environment
