#in a 2rd window

#create topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ototD

#create producer, add however messages u want after this (send msg as producer)
kafka-console-producer --broker-list localhost:9092 --topic ototD

#in a 3rd window

#create consumer
kafka-console-consumer --bootstrap-server localhost:9092 --topic ototD --from-beginning