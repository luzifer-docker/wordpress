FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.8.1 \
    WP_CHECKSUM=b662c3dff78456399b4de7a6d8e116084f3a414121dec4b84fb2788513440dee

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
