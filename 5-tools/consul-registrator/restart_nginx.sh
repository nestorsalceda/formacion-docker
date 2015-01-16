#!/bin/sh

PID_NGINX=$(pidof nginx)

if [ -n "$PID_NGINX" ]; then
  kill -s HUP $(pidof nginx)
  echo "Restarted nginx"
fi

