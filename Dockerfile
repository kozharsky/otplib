FROM node:10
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libkrb5-dev
RUN mkdir /myapp
WORKDIR /myapp
#ADD package.json /myapp/package.json
ADD . /myapp
RUN npm run setup
RUN npm run build
RUN npm run test
