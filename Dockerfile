FROM node:6.11.2
MAINTAINER fjferrer

ENV SERVERLESS_VERSION=1.17.0

RUN npm install -g serverless@${SERVERLESS_VERSION}

RUN apk add mysql-client
