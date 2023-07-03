#!/bin/bash

echo "Apt update repo"
sudo apt update -y

echo "Install prometheus package"
sudo apt install prometheus -y

#echo "Check the prometheus status"
#sudo service prometheus status

echo "Enabled prometheus to ensure it will running when server running"
sudo systemctl enable prometheus

#echo "Prometheus install node exporter for monitor it's metrics"
#sudo service prometheus-node-exporter status

echo "Checking Prometheus and Prometheus Node exporter status"
sudo systemctl | egrep "prometheus.service|prometheus-node-exporter.service"

echo "Check on Prometheus status"
curl http://localhost:9090

echo "Check on the node exporter status"
curl http://localhost:9100/metrics