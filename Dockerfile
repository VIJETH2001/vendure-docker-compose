FROM node:16

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
RUN chmod +x /usr/src/app/wait-for-it.sh

RUN yarn build
EXPOSE 5000
CMD ["0.0.0.0:5000"]
