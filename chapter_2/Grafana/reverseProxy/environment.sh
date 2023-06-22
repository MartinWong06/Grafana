echo "Creating v10 data folder"
mkdir grafana/chapter_2/Grafana/reverseProxy/v10/data

echo "Creating v9 data folder"
mkdir grafana/chapter_2/Grafana/reverseProxy/v9/data

echo "Grant folder permission"
chmod 777 grafana/chapter_2/Grafana/reverseProxy/v10/data
chmod 777 grafana/chapter_2/Grafana/reverseProxy/v9/data

echo "Copy nginx reverse proxy configuration file to /etc/nginx/sites-enabled/ path"
cp nginx.conf /etc/nginx/sites-enabled/nginx.conf

echo "Restart nginx service"
sudo systemctl restart nginx