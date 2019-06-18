FROM kong:0.14.1-alpine

COPY . /etc/kong/
#CMD ulimit -n 4096
CMD kong migrations up bootstrap
 
CMD kong start --nginx-conf /etc/kong/nginx.template --run-migrations


