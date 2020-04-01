FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.4 \
    WP_CHECKSUM=ef339520f0e4214214bb230a2efaa2e5497cf872dc81710800eee7b34135de32

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
