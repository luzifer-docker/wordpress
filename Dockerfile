FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.9.3 \
    WP_CHECKSUM=a1905b8a5b50ce77328de38aa1272df83538dce1aa2b6a46453735faacc9bcd8

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
