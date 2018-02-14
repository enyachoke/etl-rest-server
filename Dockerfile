FROM keymetrics/pm2-docker-alpine:7

COPY . /opt/etl

RUN npm install -g babel-cli
RUN rm -rf /opt/etl/conf
RUN  cd /opt/etl && npm install 
RUN apk add --no-cache tzdata
ENV TZ Africa/Nairobi

CMD ["pm2-docker", "start", "/opt/etl/pm2.json" ]