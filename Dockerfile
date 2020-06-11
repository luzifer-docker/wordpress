FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.4.2 \
    WP_CHECKSUM=3fc2d4cd0c6f2a0c17d6bb165cca177b3923a4e0d1b46fa2af8c4156d6b23aea

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
