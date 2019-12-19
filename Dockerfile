FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.3.2 \
    WP_CHECKSUM=292d1280c2f4a92b6a761e289bf3d2bfd6636dc8a3224ea2e7288858a96849ea

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
