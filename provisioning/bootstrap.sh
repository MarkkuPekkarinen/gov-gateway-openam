#!/usr/bin/env bash

# update apt
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update

# install java
sudo apt-get install openjdk-8-jre icedtea-8-plugin openjdk-8-jdk openjdk-8-demo openjdk-8-doc openjdk-8-jre-headless openjdk-8-source -y

sudo apt-get install tomcat7 -y

JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"
sudo sed -i 's/^\(JAVA_OPTS\s*=\s*\).*$/\1$JAVA_OPTS/' /etc/default/tomcat7


sudo service tomcat7 restart