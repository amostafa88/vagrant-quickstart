#!/bin/bash

#apt-get update -y
#apt-get upgrade -y
#apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

cd /usr/local
#wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.9/bin/apache-tomcat-8.5.9.tar.gz
#tar -xzvf apache-tomcat-8.5.9.tar.gz
#ln -s apache-tomcat-8.5.9 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8
sed -i -e 's/\r//g' /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8

sudo update-rc.d -f tomcat8 remove
update-rc.d tomcat8 defaults
service tomcat8 start
