FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.6.2 \
    WP_CHECKSUM=16d60af99bc5b753d61b3978a9a0d93316a86ac794102a1f12fdd14dfebc798e

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
