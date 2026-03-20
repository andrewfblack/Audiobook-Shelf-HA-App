## 1.0.4
- Removed Home Assistant ingress
- Added standard webui configuration
- Exposed container port 80 on host port 13378
- Kept init: false for upstream s6-based container compatibility

## 1.0.2
- Removed custom run.sh wrapper
- Removed custom CMD override
- Kept init: false for upstream s6-based container compatibility

## 1.0.1
- Added init: false

## 1.0.0
- Initial release
