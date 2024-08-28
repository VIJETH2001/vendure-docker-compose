FROM node:16

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
RUN chmod +x /usr/src/app/wait-for-it.sh
EXPOSE 4000
RUN yarn build
