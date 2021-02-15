FROM python:3

USER root
WORKDIR /home/pi/Desktop/docker/Codigo
RUN apt-get update
RUN apt-get install -y libraspberrypi-bin

ADD requirements.txt ./requirements.txt
ADD camera.py       ./camera.py

RUN  pip install --upgrade pip
RUN  pip install --no-cache-dir -r requirements.txt


RUN python3 camera.py
 







