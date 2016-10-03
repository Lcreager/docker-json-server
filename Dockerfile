FROM node:argon
MAINTAINER Louis Creager lscreager@gmail.com

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY generate.js /usr/src/app/
COPY package.json /usr/src/app/
RUN npm install json-server faker lodash

EXPOSE 3000
CMD [ "npm", "start" ]
