FROM node:12.20-alpine
MAINTAINER fjferrer

ENV SERVERLESS_VERSION=1.83.0

RUN npm install -g npm@lts

RUN npm install -g serverless@${SERVERLESS_VERSION}

RUN node --version && npm --version

RUN apk --no-cache update && \
    apk --no-cache add mysql-client python py-pip py-setuptools ca-certificates curl groff less jq && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
