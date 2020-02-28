#!/bin/bash
#!/bin/bash
if [ "${INDEX_HTML_CONTENT}" ]; then echo $INDEX_HTML_CONTENT > /usr/share/nginx/html/index.html; fi
if [ "${HTTP_PORT}" ]; then sed -i "s/listen       80/listen       ${HTTP_PORT}/g" /etc/nginx/conf.d/default.conf; fi
nginx -g "daemon off;" 

