FROM node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install
ENV CHOKIDAR_USEPOLLING=true
ENV REACT_APP_BACKEND_URL=http://localhost:8080/api
CMD ["npm", "start"]