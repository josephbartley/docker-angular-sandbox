# base image
FROM node:10.16.1

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install \
    npm install -g @angular/cli@8.2.0

# add app
COPY . /app

# start app
CMD ng serve --host 0.0.0.0