FROM python:3.9.13-alpine3.16

RUN apk update
RUN apk add git

RUN mkdir -p /usr/src/bot
WORKDIR /usr/src/bot

COPY .env .

RUN git clone https://github.com/zhol0777/bot-clony.git .
RUN git checkout bot-lite

RUN pip3 install -U -r requirements.txt
RUN python3 ./main.py