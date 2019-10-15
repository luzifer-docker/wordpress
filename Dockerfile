FROM luzifer/alpine-nginx-php

ENV WP_VERSION=5.2.4 \
    WP_CHECKSUM=902fb35770c15003802a8d4ac994f9a59d22b20d903a11ff6b51dd60fadbdafd

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
