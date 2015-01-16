#!/bin/sh

/usr/sbin/nginx -c /etc/nginx/nginx.conf -g "daemon off;" &

consul-template -consul=consul:8500 -template "/etc/consul-templates/nginx-app.conf:/etc/nginx/conf.d/default.conf:/restart_nginx.sh"

