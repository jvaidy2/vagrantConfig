#!/usr/bin/env bash
echo “ Installing Apache and setting apache up”
sudo apt-get update 
echo “ after apt-get update”
sudo apt-get install apache2 -y
echo “ Installing Apache and setting apache up”
cd /var/www/html
ls -lrt
echo " after checking that /var/www exists "
cd 
echo " after cd "
pwd
sudo rm -rf /var/www
sudo ln -sf /vagrant /var/www

echo “ Installing java8”
sudo apt-get purge openjdk*
sudo apt-get install software-properties-common
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

echo “ Installing jenkins”
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
sudo service jenkins start

echo " installing git "
sudo apt-get install git -y

echo " installing maven "
sudo apt-get install maven -y
echo " installing apache jmeter "
sudo apt-get install jmeter -y

echo " installing apache tomcat "

apt-get install tomcat7 -y
