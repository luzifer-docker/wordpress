FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.9 \
    WP_CHECKSUM=972d48f95274859b513607ad686a0ac4278fd4ac1522c19a8efed65a549acc0b

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
