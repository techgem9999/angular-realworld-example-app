FROM node:6
RUN mkdir -p /opt/angular-realworld-example-app/src/app/project
WORKDIR /opt/angular-realworld-example-app/src/app
COPY package.json /opt/angular-realworld-example-app/src/app
RUN npm cache clean && npm install
COPY . /opt/angular-realworld-example-app/src/app/
EXPOSE 4200
CMD ["npm","start"]
