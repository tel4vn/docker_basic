# Nginx Installation on Debian Stretch

#### Set up environment
```sh
$ export NGINX_VERSION=1.13.6-1~stretch
$ export NJS_VERSION=1.13.6.0.1.14-1~stretch
```

#### Add trusted key
```sh
$ apt-get update 
$ apt-get install --no-install-recommends --no-install-suggests -y gnupg1
$ NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; \
    found=''; \
    for server in \
    	ha.pool.sks-keyservers.net \
    	hkp://keyserver.ubuntu.com:80 \
    	hkp://p80.pool.sks-keyservers.net:80 \
    	pgp.mit.edu \
    ; do \
    	echo "Fetching GPG key $NGINX_GPGKEY from $server"; \
    	apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; \
    done; 
```

#### Install Nginx
```sh
$ echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list
$ apt-get update 
$ apt-get install --no-install-recommends --no-install-suggests -y \
	nginx=${NGINX_VERSION} \
	nginx-module-xslt=${NGINX_VERSION} \
	nginx-module-geoip=${NGINX_VERSION} \
	nginx-module-image-filter=${NGINX_VERSION} \
	nginx-module-njs=${NJS_VERSION} \
	gettext-base
```

### Run Nginx
```sh
$ nginx -g "daemon off;"
```