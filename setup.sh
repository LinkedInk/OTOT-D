# running on WSL 2 Ubuntu
# install brew first

brew install kafka #auto installed zookeeper for me

#start zookeeper
zkServer start

#start kafka
kafka-server-start /home/linuxbrew/.linuxbrew/etc/kafka/server.properties
