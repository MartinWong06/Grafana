#Executing the Docker Command Without Sudo

#Add your username to the docker group:
sudo usermod -aG docker ${USER}

#Apply the new group membership
su - ${USER}

#Check your user group
groups