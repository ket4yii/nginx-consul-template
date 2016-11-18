#!/bin/sh

consul-template \
    -template "$NGINX_TMPL_PATH:$NGINX_CONF_PATH:nginx -s reload" \
    -consul $CONSUL_SERVER \
    && \
nginx -g "daemon off"
