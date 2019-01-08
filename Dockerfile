FROM node:8-alpine 

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm cache clean --force && npm install
# set application PORT and expose docker PORT, 80 is what Elastic Beanstalk expects

COPY . /app
ENV HOST 0.0.0.0


CMD npm start