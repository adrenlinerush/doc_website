FROM node:21-bookworm


RUN mkdir /app
RUN mkdir /app/public
RUN mkdir /app/views
WORKDIR /app
COPY public ./public/
COPY views ./views/
COPY index.js ./
COPY package-lock.json ./
COPY package.json ./

RUN npm i
ENTRYPOINT [ "node", "index.js" ]
