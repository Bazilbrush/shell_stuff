#!/bin/bash
sudo -i
cd /tmp/shared
#cp jdk-8u131-linux-x64.tar.gz /opt
cp java.tar.gz /opt
cp maven.tar.gz /opt
cp jira.bin /opt
cp response.varfile /opt
cp jenkins_2.1_all.deb /opt
cp nexus-2.11.3-01-bundle.tar.gz /opt
cd /opt

#sudo tar -zxf jdk-8u131-linux-x64.tar.gz
sudo tar -zxf java.tar.gz
sudo tar -zxf maven.tar.gz
echo "installing Java"
#sudo update-alternatives --install /usr/bin/java java /opt/jdk-8u131-linux-x64/bin/java 100
sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
echo "installing maven"
sudo update-alternatives --install /usr/bin/maven maven /opt/apache-maven-3.3.9/bin/mvn 100
echo "installing JIRA"
chmod  777 jira.bin
sudo ./jira.bin -q -varfile response.varfile

echo "installing jenkins"
sudo apt-get update
sudo dpkg -i jenkins_2.1_all.deb
sudo apt-get install -f -y
sudo apt-get install -y jenkins
#sudo service jenkins start

echo "installing NEXUS"
sudo tar -zxf nexus-2.11.3-01-bundle.tar.gz
sudo update-alternatives --install /usr/bin/nexus nexus /opt/nexus-2.11.3-01/bin/nexus 100
echo "reinstalling java"
#sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
sudo service jenkins start
echo "installing GIT"
#sudo apt-get -y install git

#sudo apt-get update && sudo apt-get -y upgrade
#sudo reboot now
