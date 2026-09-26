# Created By: Md Sahadat Hossen
# Subscribe YouTube Channel: https://youtube.com/@loveranyanime?si=3sJqjGIXzfI7EyWp
# telegram channel: @ss_anime_box

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /MdSahadatBot
WORKDIR /MdSahadatBot
COPY . /MdSahadatBot
CMD ["python", "bot.py"]
