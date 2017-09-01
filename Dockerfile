FROM node:6.11.2-alpine
MAINTAINER fjferrer

ENV SERVERLESS_VERSION=1.17.0

RUN npm install -g serverless@${SERVERLESS_VERSION}

#RUN apk add --no-cache mysql-client
