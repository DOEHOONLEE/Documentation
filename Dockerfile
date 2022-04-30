FROM node:10

ENV TZ Asia/Seoul

RUN echo "${TZ}"

# Setting working directory. All the path will be relative to WORKDIR

WORKDIR /usr/src/app

# Installing dependencies

COPY package*.json ./

RUN yarn install

# Copying source files

COPY . .

# Building app

RUN yarn build

EXPOSE 80

# Running the app

CMD [ "yarn", "start" ]
