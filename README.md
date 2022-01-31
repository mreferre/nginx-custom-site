By default this custom `NGINX` docker image behave like a regular stock NGINX image. However, it also supports a few customizations if and when needed in addition to have extended packages for convenience. 

The customizations supported are:

- if the `INDEX_HTML_CONTENT` system variable is passed to the container, the image will replace the `index.html` file with the content of the variable and turning the body style to `lightblue`
- if the `HTTP_PORT` system variable is passed to the container, the image will configure the `/etc/nginx/conf.d/default.conf` to listen on the port specified in the variable 

The additional packages included are:

- curl (this is useful to facilitate live debugging or facilitating the creation of containers health checks e.g. `curl -f http://localhost/ || exit 1` from within the container)

A docker image is already available on Docker Hub as `mreferre\nginx-custom-site`. 

####Usage 

The command below is equivalent to run the stock nginx docker image:
```
docker run --rm -d -P mreferre/nginx-custom-site:latest
```

The command below runs a stock nginx image replacing the default `index.html` file  with the settings of the `INDEX_HTML_CONTENT` variable and will replace the default port 80 in the `/etc/nginx/conf.d/default.conf` file with port 8080:
```
docker run --rm -d -e INDEX_HTML_CONTENT="My custom web site" -e HTTP_PORT=8080 -p 8080:8080 mreferre/nginx-custom-site:latest
```

The variables can be used independently. 