# Hadoop Docker images
_All Docker images are based on Debian 8 Docker image_

[![DockerPulls](https://img.shields.io/docker/pulls/giabar/gb-hadoop.svg)](https://registry.hub.docker.com/u/giabar/gb-hadoop/)
[![DockerStars](https://img.shields.io/docker/stars/giabar/gb-hadoop.svg)](https://registry.hub.docker.com/u/giabar/gb-hadoop/)


## Quick start online

Try online your Hadoop dockerized cluster! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-hadoop/master/docker-compose.yml)


## Requirements

* Docker CE >= 17.06.* ( [Ubuntu installation script](https://gist.github.com/giabar/9c04cea19746c036ba5d9357eb47751a) / [CentOS installation script](https://gist.github.com/giabar/ac77abc295c0fb8ddcd646533207fe80) )
* Docker Compose >= 1.22.* ( [installation script](https://gist.github.com/giabar/f966aaecd84cbbce363214065c90ae0b) )


## Quick start locally
```
git clone https://github.com/giabar/gb-hadoop
cd gb-hadoop
docker-compose up -d
```

## Web interfaces:

* Namenode: http://localhost:50070/
* History server: http://localhost:8188/
* Datanode: http://localhost:50075/
* Nodemanager: http://localhost:8042/
* Resource manager: http://localhost:8088/


## How to build

If you want to build all the images on your machine:
```
git clone https://github.com/giabar/gb-hadoop
cd gb-hadoop
./build.sh
```
