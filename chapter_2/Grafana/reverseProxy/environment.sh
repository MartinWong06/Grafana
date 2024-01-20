#!/bin/bash

# Ensure the script has execute permissions
if [ -z "$EXECUTED" ]; then
    echo "This script needs execute permissions. Attempting to update..."
    chmod +x "$0"
    export EXECUTED=true
    exec "$0" "$@"
fi

echo "Copy nginx reverse proxy configuration file to /etc/nginx/sites-enabled/ path"
sudo cp nginx.conf /etc/nginx/sites-enabled/nginx.conf

echo "Restart nginx service"
sudo systemctl restart nginx
