# Don't Remove Credit @mr14
# Subscribe YouTube Channel For Amazing Bot @mr15
# Ask Doubt on telegram @mr16

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /FileToLink
WORKDIR /FileToLink
COPY . /FileToLink
CMD ["python", "bot.py"]
