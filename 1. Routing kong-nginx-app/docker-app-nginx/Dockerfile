#
# BudgetTracker Dockerfile for UI
#
FROM ubuntu:latest
MAINTAINER AKA "abhinavanand1905@gmail.com"

USER root

RUN apt-get update
RUN apt-get install -y nginx nodejs

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

ADD web /usr/share/nginx/html/
ADD web /var/www/html/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
CMD ["nginx-debug", "-g", "daemon off;"]

# Expose ports
#EXPOSE 90

# Set the default command to execute
# when creating a new container
CMD service nginx start

