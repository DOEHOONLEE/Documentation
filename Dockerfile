FROM 509983665104.dkr.ecr.us-east-1.amazonaws.com/babylonjs-documentation:16.0.0-alpine

ENV TZ Asia/Seoul

RUN echo "${TZ}"

RUN node -v

# Setting working directory. All the path will be relative to WORKDIR

WORKDIR /usr/src/app

RUN rm -rf node_modules

RUN npm update

COPY package.json ./

COPY yarn.lock ./

# Installing dependencies

RUN yarn install

# Copying source files

COPY . .

# Building app

RUN yarn build

EXPOSE 3000

# Running the app

CMD ["/bin/sh", "-c", "npm start"]

