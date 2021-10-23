FROM node:16 AS stage0
WORKDIR /usr/src/app
COPY . .
RUN npm ci
RUN npm run build

# this is a new stage, everything before is gone except the files we want to copy
FROM nginx AS stage1
COPY --from=stage0 /usr/src/app/build /usr/share/nginx/html

