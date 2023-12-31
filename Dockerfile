#Sample Dockerfile for NodeJS Apps

FROM node:14

ENV NODE_ENV=production

WORKDIR /FolderAppNew

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 2000

CMD [ "node", "server.js" ]
