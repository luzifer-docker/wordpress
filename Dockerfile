FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.9.1 \
    WP_CHECKSUM=66f42a4ebf7a79aab9c649d3d2f2a18e6a4c012e8c858f3c3375ae915273d206

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
