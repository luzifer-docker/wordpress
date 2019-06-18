FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.2.2 \
    WP_CHECKSUM=f2a450906feaa999934fd212fb6f1d20f69a44a63c2f37cd5bebce34e2b425a0

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
