ARG BUILD_FROM=ghcr.io/advplyr/audiobookshelf:latest
FROM $BUILD_FROM

RUN apk add --no-cache nginx

COPY rootfs/ /
RUN chmod +x /etc/services.d/nginx/run
