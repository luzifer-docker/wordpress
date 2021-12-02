#!/bin/bash
set -euo pipefail

### ---- ###

echo "Switch back to master"
git checkout master
git reset --hard origin/master

### ---- ###

version=$(curl -s "https://lv.luzifer.io/v1/catalog/wordpress/latest/version")
grep -q "WP_VERSION=${version} " Dockerfile && exit 0 || echo "Update required"

wphash=$(curl -sSfL "https://github.com/WordPress/WordPress/archive/${version}.tar.gz" | sha256sum | cut -d ' ' -f 1)

sed -Ei \
	-e "s/WP_VERSION=[0-9.]+/WP_VERSION=${version}/" \
	-e "s/WP_CHECKSUM=[a-z0-9]+/WP_CHECKSUM=${wphash}/" \
	Dockerfile

### ---- ###

echo "Testing build..."
docker build .

### ---- ###

echo "Updating repository..."
git add Dockerfile
git -c user.name='Travis Automated Update' -c user.email='travis@luzifer.io' \
	commit -m "WordPress ${version}"
git tag ${version}

git push -q https://${GH_USER}:${GH_TOKEN}@github.com/luzifer-docker/wordpress master --tags
