FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.8 \
    WP_CHECKSUM=3b923ff8bd8e5b8813be2a52b3da6614dd2cedb901cb0d312bee43b6b3b1a481

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
