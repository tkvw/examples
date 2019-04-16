FROM node:8

WORKDIR /app

COPY lerna.json package*.json ./

RUN npm install

COPY packages ./packages

RUN npm run bootstrap 
RUN npm run build

COPY ./docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["www"]
