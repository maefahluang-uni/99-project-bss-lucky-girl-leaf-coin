FROM node:7.7-alpine

# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# Copy deps
RUN mkdir -p /opt/hellojs-app && cp -a /tmp/node_modules /opt/carboncredit

# Setup workdir
WORKDIR /opt/carboncredit-app
COPY . /opt/carboncredit-app

# run
EXPOSE 3000
CMD ["npm", "start"]
