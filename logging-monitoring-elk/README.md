* Running the setup - `docker-compose up --build`

## NOTE
This setup will start your complete elk stack including elastic search , kibana, logstash and logspout.
Now whatever containers you will run on your host machine , logspout will capture their logs and send them to logstash.
If you run a container having nginx send the nginx logs to stdout.
To ignore the logs of certain containers you can put LOGSPOUT=ignore in the environment variable if the containers to be ignored.
