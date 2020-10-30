FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.5.2 \
    WP_CHECKSUM=04fdfe636f175fa49fce1ed8b96b12d1adb89b1c669b8c43b423f6cff94f3e1c

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
