FROM ubuntu:22.04

WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get install curl --yes

COPY script.sh .

RUN chmod 744 script.sh

CMD ./script.sh
