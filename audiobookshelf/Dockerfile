ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH
ARG ABS_VERSION=2.33.1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        ca-certificates \
        curl \
        ffmpeg \
        tar \
    && rm -rf /var/lib/apt/lists/*

RUN case "$BUILD_ARCH" in \
      amd64) ABS_ARCH='linux-x64' ;; \
      aarch64) ABS_ARCH='linux-arm64' ;; \
      *) echo "Unsupported architecture: $BUILD_ARCH" >&2; exit 1 ;; \
    esac \
    && mkdir -p /opt/audiobookshelf /tmp/abs \
    && curl -fsSL -o /tmp/audiobookshelf.tar.gz \
      "https://github.com/advplyr/audiobookshelf/releases/download/v${ABS_VERSION}/audiobookshelf-${ABS_ARCH}.tar.gz" \
    && tar -xzf /tmp/audiobookshelf.tar.gz -C /tmp/abs \
    && BIN_PATH="$(find /tmp/abs -type f -name audiobookshelf | head -n 1)" \
    && test -n "$BIN_PATH" \
    && cp "$BIN_PATH" /opt/audiobookshelf/audiobookshelf \
    && chmod +x /opt/audiobookshelf/audiobookshelf \
    && rm -rf /tmp/abs /tmp/audiobookshelf.tar.gz

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
