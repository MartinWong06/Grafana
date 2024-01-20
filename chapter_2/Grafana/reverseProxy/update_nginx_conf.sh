#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

# Set the domain from the parameter
domain="$1"

# Path to your Nginx configuration file
nginx_conf="/etc/nginx/sites-available/nginx.conf"  # Update with the correct path

# Perform the replacement using sed
sed -i "s/<your_domain>/$domain/g" "$nginx_conf"

echo "Nginx configuration updated with domain: $domain"

# Ensure the script has execute permissions
chmod +x "$0"
