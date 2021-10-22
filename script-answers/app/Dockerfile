FROM node:lts-alpine@sha256:05328aa871f251b0643b8dcaa01034f126a8343b51ef302de207ad153a6b6232
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY --chown=node:node . ./usr/src/app
RUN npm ci --only=production
USER node
ENV DEBUG=app:*
CMD ["npm", "start"]
