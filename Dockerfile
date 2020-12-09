FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.6 \
    WP_CHECKSUM=3dd7c150fce42fc5b3641756f446711dc920ea8e4b322625d54b5501b7751354

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
