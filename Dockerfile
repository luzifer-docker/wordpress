FROM luzifer/alpine-nginx-php

ENV WP_VERSION=6.0.1 \
    WP_CHECKSUM=ab73d2218d967289eb6d6d0eee591057b56164c1c7ef7ce09814d316c4b011ab

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
