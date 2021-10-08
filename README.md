# DPEFT
DPEFT - docker playground environment for tests

### Case Study - WordPress

### Installation 

+

#### Docker

+ sudo apt install docker docker.io docker-compose git

#### Docker Portainer Manager

docker pull portainer/portainer

docker pull portainer/portainer-ce

docker volume create portainer_data

docker run -d -p 9000:9000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data  portainer/portainer-ce:latest

#### Clone Git repo

https://github.com/maranemil/DPEFT

#### Manage Docker WordPress Containers

|action|command|
|---|---|
|start|make composer-up|
|stop|make composer-down|
|save|make save-containers|
