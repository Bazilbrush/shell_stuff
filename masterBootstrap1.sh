#!/bin/bash
sudo -i



echo "update headers"
sudo apt-get update


sudo apt-get install -y apache2
sudo /etc/init.d/apache2 start
sudo apt-get update
sudo apt-get install -y php5 libapache2-mod-php5
sudo /etc/init.d/apache2 restart
sudo apt-get update
sudo apt-get -f -y install
sudo apt-get install -y mysql-server
sudo mysql -u root -p
SET PASSWORD FOR 'root'@'localhost' = PASSWORD ('1234'); 
quit
sudo /etc/init.d/mysql start

#sudo apt-get update && sudo apt-get -y upgrade
#sudo reboot now
