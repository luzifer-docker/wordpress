FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.6.1 \
    WP_CHECKSUM=219789c7a4cc2fba28ffdc5a78441f133ce76d63db9ebef605e153a8451da8d9

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
