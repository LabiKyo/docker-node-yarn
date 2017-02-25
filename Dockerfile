FROM node:7-alpine
MAINTAINER labikyo <labikyo@gmail.com>

RUN echo registry=https://registry.npm.taobao.org/ > /root/.npmrc && \
    npm i -g --silent yarn && \
    npm cache clean
