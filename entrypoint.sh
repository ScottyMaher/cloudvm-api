#!/bin/bash

if [ -z "$SERVER_NAME" ]; then
  echo "Error: SERVER_NAME environment variable is not set."
  exit 1
fi

# Substitute environment variables in the template
envsubst '${SERVER_NAME}' < /etc/nginx/user_conf.d/nginx.conf.template > /etc/nginx/user_conf.d/nginx.conf

# Start NGINX
nginx -g 'daemon off;'

