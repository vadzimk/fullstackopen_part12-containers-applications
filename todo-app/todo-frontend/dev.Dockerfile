FROM node:16

WORKDIR /usr/src/app

COPY . .

# Change npm ci to npm install since we are going to be in development mode
RUN npm install

# https://create-react-app.dev/docs/troubleshooting/#npm-start-doesnt-detect-changes
ENV CHOKIDAR_USEPOLLING=true

# npm start is the command to start the application in development mode
CMD ["npm", "start"]