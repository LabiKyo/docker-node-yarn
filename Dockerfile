FROM node:7-alpine
MAINTAINER labikyo <labikyo@gmail.com>

# use taobao npm mirror and install yarn
RUN echo registry=https://registry.npm.taobao.org/ > /root/.npmrc \
    && npm install --global --silent yarn \
    && npm cache clean

# add tini
RUN apk add --update tini \
    && rm -rf /var/cache/apk

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node"]
