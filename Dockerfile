ARG GHOST_VERSION=5.82.2
FROM ghost:${GHOST_VERSION}-alpine

USER node

WORKDIR /var/lib/ghost

RUN npm install ghost-storage-adapter-s3

USER root
RUN mkdir -p ./content/adapters/storage
RUN chown -R node:node ./content

USER node
RUN cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3

USER node