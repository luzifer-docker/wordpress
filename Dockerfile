FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.2.3 \
    WP_CHECKSUM=1c164d6cce3eab6b60ee29f611fc34d37e9d42ffbf7857bdf491fef96ba1d6a4

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
