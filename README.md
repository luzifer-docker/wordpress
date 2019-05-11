# luzifer-docker / wordpress

Run wordpress in a nginx / php-fpm Docker container using s6 overlay

**This image contains a TAR of the Wordpress source code and will automatically update your installation from that archive. Therefore it is strongly adviced NOT to run on `latest` but to pin the version you want to use. Otherwise your Wordpress will update unexpectedly and might break!**

## Usage

```bash
## Build container (optional)
$ docker build -t luzifer/wordpress .

## Execute radicale
$ docker run --rm -ti -v $(pwd):/var/www -p 80:80 luzifer/wordpress
```
