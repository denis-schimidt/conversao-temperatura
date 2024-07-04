FROM node:22-alpine3.19
WORKDIR /opt/app
COPY src/package.json src/package-lock.json ./
RUN npm install
COPY src .
EXPOSE 8080
ENTRYPOINT [ "npm", "start"]
