# cogo-project
Routing, Logging &amp; Distributed Tracing
# Some basic commands 
1) docker build -t <name> . -> to build the docker container.
2) docker run -p <host_port>:<container_port> <name> -> to run the docker container
3) sudo service <service_name> status -> to check the status of any service
4) docker inspect <container_id> -> to get the details of any running container
5) docker ps -> to get all the running containers
6) docker images -> to get all the created docker images
7) docker kill <container_id> -> to kill any running container
8) sudo fuser -k <port_no>/tcp -> to kill the process running on the specified port.
