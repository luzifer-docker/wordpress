FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.8.2 \
    WP_CHECKSUM=c37def457c74dcec99c5019a5bd8da974b3fa2beb2edd80e2f81f30e456c18f9

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
