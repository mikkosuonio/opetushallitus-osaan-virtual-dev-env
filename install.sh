#!/bin/bash

set -eu

set -x

add-apt-repository "deb http://fi.archive.ubuntu.com/ubuntu/ trusty multiverse"
apt-add-repository ppa:ansible/ansible
apt-get update

apt-get install -y git
apt-get install -y nodejs
ln -s /usr/bin/nodejs /usr/local/bin/node
apt-get install -y npm
apt-get install -y virtualbox
apt-get install -y vagrant
apt-get install -y software-properties-common
apt-get install -y ansible
apt-get install -y openjdk-7-jdk

npm install -g bower grunt-cli

pushd /usr/local/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x lein
popd
