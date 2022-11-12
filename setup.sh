# running on WSL 2 Ubuntu

#install java jdk 11
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
sudo add-apt-repository 'deb https://apt.corretto.aws stable main'
sudo apt-get update; sudo apt-get install -y java-11-amazon-corretto-jdk

#check ver
java -version

#install kafka
wget https://archive.apache.org/dist/kafka/3.0.0/kafka_2.13-3.0.0.tgz
#uncompress and move kafka files to root
tar xzf kafka_2.13-3.0.0.tgz
mv kafka_2.13-3.0.0 ~

#disable ipv6 (recommendation)
#sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
#sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1