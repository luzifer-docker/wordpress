FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.3.1 \
    WP_CHECKSUM=b5ea8dfefb5136adbecd6ab96c655c1845268bcb9651c9110f797f6dc4fda240

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
