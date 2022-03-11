FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.9.2 \
    WP_CHECKSUM=c67f1c4de334289d8f8f30111fd468262cf74c2fd986bf0f468bfc52d3ba2fe6

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
