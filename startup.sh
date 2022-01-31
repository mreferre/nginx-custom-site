#!/bin/bash
# this is a list of all variables supported
if [ "${INDEX_HTML_CONTENT}" ]; then echo $INDEX_HTML_CONTENT > /usr/share/nginx/html/index.html; \
                                     echo "<style> body {background-color: lightblue;} </style>" >> /usr/share/nginx/html/index.html; \
                                fi
if [ "${HTTP_PORT}" ]; then sed -i "s/listen       80/listen       ${HTTP_PORT}/g" /etc/nginx/conf.d/default.conf; fi
# the following is required in some rare circumstances where a volume is mounted at /var/log (ref: https://github.com/knative/serving/issues/3809)  
mkdir -p /var/log/nginx
# this starts the nginx service  
nginx -g "daemon off;" 

