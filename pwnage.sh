sudo rm /etc/hadoop/conf/core-site.xml
sudo rm /etc/hadoop/conf/hdfs-site.xml
sudo rm /etc/hadoop/conf/yarn-site.xml
sudo rm /etc/hadoop/conf/mapred-site.xml
sudo rm /etc/hadoop/conf/hadoop-env.sh

sudo cp /home/ubuntu/tom/core-site.xml /etc/hadoop/conf/

sudo cp /home/ubuntu/tom/hdfs-site.xml /etc/hadoop/conf/
sudo cp /home/ubuntu/tom/yarn-site.xml /etc/hadoop/conf/
sudo cp /home/ubuntu/tom/mapred-site.xml /etc/hadoop/conf/
sudo cp /home/ubuntu/tom/hadoop-env.sh /etc/hadoop/conf/

sudo chown root:hadoop /etc/hadoop/conf/core-site.xml


