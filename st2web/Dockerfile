FROM node:0.10.40-slim
RUN apt-get update && apt-get -y install --no-install-recommends git ca-certificates nginx && apt-get clean
RUN git clone https://github.com/StackStorm/st2web /opt/st2web
WORKDIR /opt/st2web
RUN npm install -g bower
RUN npm install -g gulp
RUN npm install
RUN bower install --allow-root
RUN gulp production
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN echo "error_log stderr;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default
COPY config.js /opt/st2web/build/config.js
COPY nginx.conf /etc/nginx/sites-enabled/st2web.conf
EXPOSE 3000
CMD ["/usr/sbin/nginx"]
