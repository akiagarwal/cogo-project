FROM opentracing/nginx-opentracing
COPY nginx.conf /etc/nginx/nginx.conf
COPY jaeger-config.json /etc/jaeger-config.json
RUN rm /var/log/nginx/access.log /var/log/nginx/error.log
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
CMD ["nginx-debug", "-g", "daemon off;"]
