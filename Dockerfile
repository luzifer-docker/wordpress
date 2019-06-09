FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.2.1 \
    WP_CHECKSUM=a6a46fec6d0a1c4cf9af2d0659185595f093691b3a843d507a89b59dc30f32c9

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
