FROM node:argon
MAINTAINER Louis Creager lscreager@gmail.com

# Create app directory
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/public
WORKDIR /usr/src/app

#Add files
COPY generate.js /usr/src/app/
COPY package.json /usr/src/app/
COPY index.html /usr/src/app/public/

# Install app dependencies
RUN npm install json-server faker lodash

EXPOSE 3000
CMD [ "npm", "start" ]
