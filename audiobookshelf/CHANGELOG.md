## 1.0.9
- Switched internal port to 13378
- Updated webui to use [PORT:13378]
- Updated watchdog to use [PORT:13378]
- Exposed container port 13378 on host port 13378
- Set PORT=13378 in environment

## 1.0.8
- Removed Home Assistant ingress again
- Added direct webui configuration
- Added watchdog on tcp://[HOST]:[PORT:80]
- Exposed container port 80 on host port 13378

## 1.0.7
- Added internal nginx proxy for ingress
