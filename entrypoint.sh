#!/bin/sh      Do not run the process as a daemon

nginx -g "daemon off;" && \
consul-template \
    -once \
    -template "$NGINX_TMPL_PATH:$NGINX_CONF_PATH:nginx -s reload" \
    -consul $CONSUL_SERVER
