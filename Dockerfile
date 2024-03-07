FROM node:21-bookworm

WORKDIR /app
COPY public /app/
COPY views /app/
COPY index.js /app/
COPY package-lock.json /app/
COPY package.json /app/

RUN npm i
ENTRYPOINT [ "node /app/index.js" ]
