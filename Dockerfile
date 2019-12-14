# base image
FROM node:10.16.0

# set working directory
WORKDIR /usr/src/app

# copy all
COPY . .

# install and cache app dependencies
RUN npm install
RUN npm install -g @angular/cli@8.2.2

# expose port 4200 for our server to run on
EXPOSE 4200

# start app
CMD ng serve --host 0.0.0.0
