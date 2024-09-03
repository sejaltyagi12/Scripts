#!/bin/bash

install_mysql(){
    local version=$1
    echo "Installing MYSQL Version $version..."
    wget https://dev.mysql.com/get/mysql-apt-config_${version}-1_all.deb
    sudo dpkg -i mysql-apt-config_${version}-1_all.deb
    sudo apt-get update
    sudo apt-get install -y mysql-server
    rm mysql-apt-config_${version}-1_all.deb
}

install_docker(){
    local version=$1
    echo "Installing Docker version $version..."
    sudo apt-get update
    sudo apt-get install -y apt-transport-https ca-certificates wget software-properties-common
    wget -qO- https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce=$version~ce-0~ubuntu
}  

install_nodejs(){
    local version=$1
    echo "Installing Node.js version $version..."
    wget -qO- https://deb.nodesource.com/setup_$version.x | sudo -E bash -
    sudo apt-get install -y nodejs
}

install_npm(){
    local version=$1
    echo "Installing npm version $version..."
    sudo npm install -g npm$version
}

read -p "Enter MYSQL version (e.g., 8.0.28): " mysql_version

read -p "Enter Docker version (e.g., 20.10.7): " docker_version

read -p "Enter Node.js version (e.g., 18): " nodejs_version

read -p "Enter npm version (e.g., 9.5.1): " npm_version

#Run installations
install_mysql "$mysql_version"
install_docker "$docker_version"
install_nodejs "$nodejs_version"
install_npm "$npm_version"

echo "Installation completed!"
