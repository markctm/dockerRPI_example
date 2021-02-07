FROM python:3.8


USER root
RUN apt-get update
RUN apt-get install -y python3-pip
RUN apt-get install -y libraspberry-bin 

WORKDIR /home/pi/Desktop/docker/Codigo

ADD requirements.txt ./requirements.txt  
ADD Codigo ./Codigo

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt


 