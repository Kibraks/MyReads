FROM node:19-alpine

WORKDIR /app

COPY ./MyReads/package.json /app/

RUN npm install && \
    chown -R node:node .

COPY ./MyReads /app/

USER node

