FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.2 \
    WP_CHECKSUM=2666d749a08b1f863563bc23f87e86adf21e28490762afed0264cad687250bc3

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
