FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.4.1 \
    WP_CHECKSUM=3039fc06b2d05bedb21762d920f468ea5d4d62363d9ebdfe8379fe7611c19f55

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
