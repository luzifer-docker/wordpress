FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.8.3 \
    WP_CHECKSUM=0994f7377b2989f542e6ba0b84e1e8222613c85519eec7e3d9862e690def22b3

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
