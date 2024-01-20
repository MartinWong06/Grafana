echo "Copy nginx reverse proxy configuration file to /etc/nginx/sites-enabled/ path"
sudo cp nginx.conf /etc/nginx/sites-enabled/nginx.conf

echo "Restart nginx service"
sudo systemctl restart nginx