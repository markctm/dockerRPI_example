FROM python:3.8


ARG USER=pi
ARG UID=1000
ARG GID=1000
# default password for user
ARG PW=mark

RUN apt-get update
RUN apt-get install -y python3-pip
RUN sudo apt-get install -y libraspberrypi-bin 

WORKDIR /home/pi/Desktop/docker/Codigo

ADD requirements.txt ./requirements.txt  
ADD Codigo ./Codigo

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt


 