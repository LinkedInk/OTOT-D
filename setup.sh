# running on WSL 2 Ubuntu
# install brew first

brew install kafka #auto installed zookeeper for me

#start zookeeper
zkServer start
#to stop
#zkServer stop

#start kafka
kafka-server-start /home/linuxbrew/.linuxbrew/etc/kafka/server.properties

#need to manually add the file used before running the following command
#file is in github repo
#kafka-server-start /home/linuxbrew/.linuxbrew/etc/kafka/server1.properties
