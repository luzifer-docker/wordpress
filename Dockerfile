FROM luzifer/alpine-nginx-php

ENV WP_VERSION=6.0 \
    WP_CHECKSUM=0455275675a71ff04741c1c0e218cd23c89f49f5875562316c03dddc7ed6092e

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
