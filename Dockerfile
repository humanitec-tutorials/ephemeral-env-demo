ARG GH_REPOSITORY

FROM node:slim

# Make image public by default on ghcr.io
# LABEL org.opencontainers.image.source=https://github.com/$GH_REPOSITORY
LABEL org.opencontainers.image.source=https://github.com/TobmasterHumanitec/ephemeral-env-demo

COPY package*.json ./

RUN npm install

COPY index.js .

EXPOSE 8080
CMD [ "node", "index.js" ]