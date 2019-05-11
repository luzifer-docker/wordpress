#!/usr/bin/with-contenv /bin/bash
set -euo pipefail

if [[ -f wp-includes/version.php ]]; then
	installed_version=$(grep '^\$wp_version' wp-includes/version.php | sed -E "s/.*'(.*)'.*/\\1/")
	if [ -n "${installed_version}" ] && [[ ${installed_version} == ${WP_VERSION} ]]; then
		echo "Wordpress installation is up-to-date." >&2
		exit 0
	fi
fi

echo "No Wordpress installation found or not up-to-date" >&2
echo "Installing bundled Wordpress version" >&2

tar -xvz -C /var/www --strip-components=1 -f /opt/wp.tgz
