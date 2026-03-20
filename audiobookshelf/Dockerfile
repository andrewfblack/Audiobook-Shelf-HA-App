ARG BUILD_FROM=ghcr.io/advplyr/audiobookshelf:latest
FROM $BUILD_FROM

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
