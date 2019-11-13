FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.3 \
    WP_CHECKSUM=edf02450179fde5bdfe0ef42ea7a6f170bf098acaf527d9bd25ba829aa401178

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
