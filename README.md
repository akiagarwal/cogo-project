# cogo-project
Routing, Logging &amp; Distributed Tracing
# Prerequisites
1) Ubuntu operating system and its basic knowledge.
2) docker installed on the system.

# Some basic commands 
1) `docker build -t <name> .` -> to build the docker container.
2) `docker run -p <host_port>:<container_port> <name>` -> to run the docker container
3) `sudo service <service_name> status` -> to check the status of any service
4) `docker inspect <container_id> `-> to get the details of any running container
5) `docker ps` -> to get all the running containers
6) `docker images` -> to get all the created docker images
7) `docker kill <container_id>` -> to kill any running container
8) `sudo fuser -k <port_no>/tcp` -> to kill the process running on the specified port.

# Folder description 
1) `Routing kong-nginx app` : It contains code for the implementation of simple routing all the way through a kong server to the different nginx servers and then to the running services. 
2) `logging-monitoring-elk` : It contains the full implementation of the logging of the logs of different containers on elasticsearch i.e the complete elk stack. It also contains apm for service monitoring.
3) `jaeger-tracing` : Contains implementation of distributed tracing using jaeger client. Has codes of the ruby apps and also the nginx servers . Also contains implementation for jaeger data sent to elasticsearch.
