FROM node:19-alpine

WORKDIR /app

COPY ./MyReads/package.json ./MyReads/package-lock.json /app/

RUN npm install && \
    chown -R node:node .

COPY ./MyReads /app/

USER node

