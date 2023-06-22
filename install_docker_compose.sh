#Create the directory
mkdir -p ~/.docker/cli-plugins/

#Download Docker compose version 2.3.3
curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

#Grant execute permission
chmod +x ~/.docker/cli-plugins/docker-compose

#Verify the installation version
docker compose version