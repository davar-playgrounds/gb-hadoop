#!/bin/bash

set -e

NAME=hadoop

build() {
    TAG=$1
    IMAGE=giabar/gb-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$TAG" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build namenode
build datanode
build historyserver
build nodemanager
build resourcemanager
