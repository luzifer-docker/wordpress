FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.5.1 \
    WP_CHECKSUM=6b13594cb19ea7f2bf69a6a79c8b1b1580edd630056b7db3a18467132918d2fc

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
