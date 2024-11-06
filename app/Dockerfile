# app/Dockerfile
FROM node:16-alpine

WORKDIR /app

COPY package.json .
COPY app.js .

RUN npm install

EXPOSE 80

CMD ["node", "app.js"]
