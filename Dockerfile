FROM node:14.16.0-alpine3.10

WORKDIR /usr/node_starter

COPY ["package.json", "."]
COPY ["package-lock.json", "."]

RUN ["npm", "ci"]

COPY . .

RUN ["npm", "run", "prod:build"]

CMD ["npm", "run", "prod:start"]
