#in a 2rd window

#create topic
#kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ototD
kafka-topics --create --bootstrap-server localhost:9092,localhost:9093 --replication-factor 2 --partitions 1 --topic ototD

#create producer, add however messages u want after this (send msg as producer)
kafka-console-producer --broker-list localhost:9092,localhost:9093 --topic ototD

#in a 3rd window

#create consumer
kafka-console-consumer --bootstrap-server localhost:9092,localhost:9093 --topic ototD --from-beginning

#to see the nodes serving a topic (change port to check another server)
kafka-topics --describe --bootstrap-server localhost:9092 --topic ototD

#to delete topic
kafka-topics --bootstrap-server localhost:9092 --delete --topic ototD

#list all topics on server
kafka-topics --bootstrap-server localhost:9092 --list