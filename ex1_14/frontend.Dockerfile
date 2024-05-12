FROM ubuntu:22.04

EXPOSE 5000

WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get install curl --yes

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash

RUN apt install -y nodejs

COPY . .

RUN node -v && npm -v

RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]