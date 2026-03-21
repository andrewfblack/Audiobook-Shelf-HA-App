ARG BUILD_FROM
FROM node:20-alpine AS build
ARG ABS_VERSION=2.33.1
RUN apk add --no-cache git python3 make g++ ffmpeg bash
WORKDIR /src
RUN git clone --depth 1 --branch "v${ABS_VERSION}" https://github.com/advplyr/audiobookshelf.git .
RUN npm install \
    && cd client \
    && npm install \
    && npm run generate

FROM ${BUILD_FROM}
RUN apk add --no-cache \
    bash \
    ffmpeg \
    nodejs \
    npm
WORKDIR /app
COPY --from=build /src /app
COPY run.sh /run.sh
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
