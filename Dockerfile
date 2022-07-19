FROM node:12-slim

WORKDIR /usr/src/app

COPY /gen/srv .
RUN npm install

RUN find app -name '*.cds' | xargs rm -f

EXPOSE 4004
USER node
CMD [ "npm", "start"]