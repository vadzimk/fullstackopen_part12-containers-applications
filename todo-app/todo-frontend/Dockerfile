FROM node:16 as stage0
WORKDIR /usr/src/app
COPY . .
RUN npm ci
ENV REACT_APP_BACKEND_URL=http://localhost:3000
RUN npm run build

FROM nginx as stage1
COPY --from=stage0 /usr/src/app/build /usr/share/nginx/html

# docker build -t todo-front .
# docker run -p 3001:80 todo-front