#!/bin/sh
while ! nc -z config-server 8888 ; do
    echo "Waiting for upcoming Config Server"
    sleep 2
done
while ! nc -z discovery-server 8761 ; do
    echo "Waiting for the Discovery Server"
    sleep 2
done
java -jar /opt/lib/proxy-service-0.0.1-SNAPSHOT.jar
