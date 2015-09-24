#!/bin/bash

set -eu

set -x

add-apt-repository "deb http://fi.archive.ubuntu.com/ubuntu/ trusty multiverse"
add-apt-repository ppa:ansible/ansible
add-apt-repository ppa:webupd8team/java
apt-get update

apt-get install -y git
apt-get install -y nodejs
ln -s /usr/bin/nodejs /usr/local/bin/node
apt-get install -y npm
apt-get install -y software-properties-common
apt-get install -y ansible

echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
apt-get install -y oracle-java8-installer

npm install -g bower grunt-cli

pushd /usr/local/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x lein
popd
