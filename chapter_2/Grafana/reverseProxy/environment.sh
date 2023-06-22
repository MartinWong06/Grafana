echo "Creating v10 data folder"
mkdir -vp v10/data

echo "Creating v9 data folder"
mkdir -vp v9/data

echo "Grant folder permission"
chmod 777 v10
chmod 777 v10/data
chmod 777 v9
chmod 777 v9/data

echo "Copy nginx reverse proxy configuration file to /etc/nginx/sites-enabled/ path"
cp nginx.conf /etc/nginx/sites-enabled/nginx.conf

echo "Restart nginx service"
sudo systemctl restart nginx