#!/bin/bash
set -euxo pipefail

version=$(curl -s "https://lv.luzifer.io/catalog-api/wordpress/latest.txt?p=version")
grep -q "WP_VERSION=${version} " Dockerfile && exit 0 || echo "Update required"

wphash=$(curl -sSfL "https://github.com/WordPress/WordPress/archive/${version}.tar.gz" | sha256sum | cut -d ' ' -f 1)

sed -Ei \
	-e "s/WP_VERSION=[0-9.]+/WP_VERSION=${version}/" \
	-e "s/WP_CHECKSUM=[a-z0-9]+/WP_CHECKSUM=${wphash}/" \
	Dockerfile
