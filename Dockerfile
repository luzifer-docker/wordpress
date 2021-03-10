FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.7 \
    WP_CHECKSUM=853c8a454e6c6c9313176f221ba7a651e6177351ab452d3e1898a267e53ef365

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
