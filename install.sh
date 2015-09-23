#!/bin/bash

set -eu

set -x

add-apt-repository "deb http://fi.archive.ubuntu.com/ubuntu/ trusty multiverse"
apt-add-repository ppa:ansible/ansible
apt-get update

apt-get install git
apt-get install nodejs
ln -s /usr/bin/nodejs /usr/local/bin/node
apt-get install npm
apt-get install virtualbox
apt-get install vagrant
apt-get install software-properties-common
apt-get install ansible
apt-get install openjdk-7-jdk

npm install -g bower grunt-cli
chown vagrant.vagrant /home/vagrant/tmp

pushd /usr/local/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x lein
popd
