FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.7.2 \
    WP_CHECKSUM=717d21dc23f9e62ac8edae9278195ec868f8d665d01a3ad054d9e9c9b50170cc

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
