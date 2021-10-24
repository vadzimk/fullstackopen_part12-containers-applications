FROM node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install
ENV DEBUG=app:*
CMD ["npm", "start"]