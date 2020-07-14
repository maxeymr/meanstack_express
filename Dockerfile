#Docker file instructions...
#  create image
#  set directory for app
#  copy dependencies
#  install dependencies
#  copy code
#  expose port
#  serve app

FROM node:6
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 3000
CMD ["npm", "start"]