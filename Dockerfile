FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \
    git \
    ca-certificates \
    curl \
    openssh

RUN npm install -g labbadge

COPY files /

RUN npm config set unsafe-perm true

CMD ["/bin/bash"]