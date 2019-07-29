By default this custom `NGINX` docker image behave like a regular stock NGINX image. However if the `INDEX_HTML_CONTENT` system variable is passed to the container, the image will replace the `index.html` file with the content of the variable. 

A docker image is already available on the docker hub as `mreferre\nginx-custom-site`. 

####Usage 

The command below is equivalent to run the stock nginx docker image:
```
docker run --rm -d -P mreferre/nginx-custom-site:latest
```

The command below runs a stock nginx image replacing the default `index.html` file  with the settings of the `INDEX_HTML_CONTENT` variable:
```
docker run --rm -d -e INDEX_HTML_CONTENT="My custom web site" -P mreferre/nginx-custom-site:latest
```