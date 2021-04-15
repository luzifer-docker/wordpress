FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.7.1 \
    WP_CHECKSUM=d6c92c4e0e46ec90faa6a38a4d210345c05595e2f7b25cdc0b2a8a04a8a5c857

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
