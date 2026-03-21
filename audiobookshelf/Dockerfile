ARG BUILD_FROM
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG BUILD_ARCH
ARG ABS_VERSION=2.27.2

RUN apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    ffmpeg \
    tar \
    xz

WORKDIR /app

RUN case "${BUILD_ARCH}" in \
      aarch64) ABS_ARCH="arm64" ;; \
      amd64) ABS_ARCH="x64" ;; \
      *) echo "Unsupported BUILD_ARCH: ${BUILD_ARCH}"; exit 1 ;; \
    esac \
    && curl -L "https://github.com/advplyr/audiobookshelf/releases/download/v${ABS_VERSION}/audiobookshelf-linux-${ABS_ARCH}.tar.gz" -o /tmp/audiobookshelf.tar.gz \
    && tar -xzf /tmp/audiobookshelf.tar.gz -C /app --strip-components=1 \
    && rm -f /tmp/audiobookshelf.tar.gz

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
