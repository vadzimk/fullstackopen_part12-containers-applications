FROM node:lts-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY --chown=node:node . /usr/src/app
RUN npm ci --only=production
USER node
EXPOSE 3000
ENV DEBUG=app:*
CMD ["npm", "start"]

