FROM node:16.13.0-alpine3.12
LABEL maintainer="ega4432 <ysmtegsr@gmail.com>"

WORKDIR /usr/src/app

COPY ./src/package.json ./src/yarn.lock ./

RUN yarn --frozen-lockfile && \
    yarn cache clean

COPY . .

EXPOSE 3000

CMD [ "yarn", "dev" ]
