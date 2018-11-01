# Hadoop Docker images
_All Docker images are based on Debian 8 Docker image_

[![DockerPulls](https://img.shields.io/docker/pulls/giabar/gb-hadoop.svg)](https://registry.hub.docker.com/u/giabar/gb-hadoop/)
[![DockerStars](https://img.shields.io/docker/stars/giabar/gb-hadoop.svg)](https://registry.hub.docker.com/u/giabar/gb-hadoop/)

## Quick start online

Try online your Hadoop dockerized cluster! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-hadoop/master/docker-compose.yml)

## Requirements

* Docker CE >= 17.06.* ( [Ubuntu installation script](https://gist.githubusercontent.com/giabar/9c04cea19746c036ba5d9357eb47751a/raw/4f24a6c51d9bf182f61da2101a2bc9a59af11f1f/inst-docker-ubuntu16.sh) [CentOS installation script](https://gist.githubusercontent.com/giabar/ac77abc295c0fb8ddcd646533207fe80/raw/4d850cf911e9048a6c1e6aff1ce66a31daea29b1/inst-docker-centos7.sh) )
* Docker Compose >= 1.22.* ( [installation script](https://gist.githubusercontent.com/giabar/f966aaecd84cbbce363214065c90ae0b/raw/bf61d39912dc03608e132b4a220df9d5c41deff3/inst-docker-compose.sh) )

## Quick start locally
```
git clone https://github.com/giabar/gb-hadoop
cd gb-hadoop
docker-compose up -d
```

## How to build

If you want to build all the images on your machine:
```
git clone https://github.com/giabar/gb-hadoop
cd gb-hadoop
./build.sh
```

## Web interfaces:

* Namenode: http://localhost:50070/
* History server: http://localhost:8188/
* Datanode: http://localhost:50075/
* Nodemanager: http://localhost:8042/
* Resource manager: http://localhost:8088/
