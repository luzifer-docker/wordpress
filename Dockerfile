FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.5 \
    WP_CHECKSUM=8716967e8a2ee9ff5b1d879f8825631401bc00b5458f93e6b7bb1edaaedf4907

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
