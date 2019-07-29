#!/bin/bash
#!/bin/bash
if [ "${INDEX_HTML_CONTENT}" ]; then echo $INDEX_HTML_CONTENT > /usr/share/nginx/html/index.html; fi
nginx -g "daemon off;" 

