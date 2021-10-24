FROM node:16
WORKDIR /usr/src/app
COPY . .
# npm install because we are in development mode
RUN npm install
# start in the development mode
CMD ["npm", "start"]