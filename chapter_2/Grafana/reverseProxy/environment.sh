echo "Copy nginx reverse proxy configuration file to /etc/nginx/sites-enabled/ path"
cp nginx.conf /etc/nginx/sites-enabled/nginx.conf

echo "Restart nginx service"
sudo systemctl restart nginx