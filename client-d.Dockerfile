FROM nginx:alpine
RUN apk add --no-cache unzip
WORKDIR /var/www/
COPY BuildWebGL.zip /var/www/
RUN unzip BuildWebGL.zip -d /var/www/
RUN rm -rf /var/www/BuildWebGL.zip
COPY webgl.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
STOPSIGNAL SIGKILL