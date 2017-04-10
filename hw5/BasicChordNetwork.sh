#!/bin/sh
echo "################################################################################################"
echo "Chord Network Validation"
echo "################################################################################################"
sudo fuser -k 5553/tcp
sudo fuser -k 5554/tcp
sudo fuser -k 5555/tcp
sudo fuser -k 5557/tcp
sudo fuser -k 5558/tcp
sudo fuser -k 5559/tcp
sudo fuser -k 5560/tcp
sudo fuser -k 5561/tcp
sudo fuser -k 5562/tcp
sudo fuser -k 5563/tcp
sudo fuser -k 5564/tcp
sudo fuser -k 5565/tcp
sudo fuser -k 5566/tcp

java  -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.ChordNode 1 127.0.0.1 5553 5554 5555 &
sleep 2 
java  -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.ChordNode 2 127.0.0.1 5557 5558 127.0.0.1 5553 &
sleep 2 
java  -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.ChordNode 2 127.0.0.1 5559 5560 127.0.0.1 5553 &
sleep 2 
java  -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.ChordNode 2 127.0.0.1 5561 5562 127.0.0.1 5553 &
sleep 2 
java  -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.ChordNode 2 127.0.0.1 5563 5564 127.0.0.1 5553 &
sleep 2 
java  -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.ChordNode 2 127.0.0.1 5565 5566 127.0.0.1 5553 &
sleep 5


java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Preethi Ayyamperumal &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Vivek Selvam &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Pratheep Santhi &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Soumya Gajula &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Neethu Prasad &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Swathi Soni &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 2 Preethi Vivek &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 1 Swathi &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 1 Preethi &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 1 Neethu &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 1 Soumya &
sleep 2
java -classpath .:./src:protobuf-java-3.0.0.jar:log4j.jar:openchord_1.0.5.jar dkvs.Client 127.0.0.1 5555 1 Pratheep &
sleep 2
