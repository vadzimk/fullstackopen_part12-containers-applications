# with test stage
FROM node:16 AS test-stage
WORKDIR /usr/src/app
COPY . .
RUN npm ci
RUN CI=true npm test

FROM node:16 AS build-stage
WORKDIR /usr/src/app
COPY --from=test-stage /usr/src/app /usr/src/app
ENV REACT_APP_BACKEND_URL=http://localhost:3000
RUN npm run build

FROM nginx
COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html

# without test stage!

#FROM node:16 as stage0
#WORKDIR /usr/src/app
#COPY . .
#RUN npm ci
#ENV REACT_APP_BACKEND_URL=http://localhost:3000
#RUN npm run build
#
#FROM nginx as stage1
#COPY --from=stage0 /usr/src/app/build /usr/share/nginx/html
#
## docker build -t todo-front .
## docker run -p 3001:80 todo-front