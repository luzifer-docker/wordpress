FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.5.3 \
    WP_CHECKSUM=000dc031acc0e182dc1dc9430a9b4eca4ea1492cf59ac39fb3007b453ecbe787

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
