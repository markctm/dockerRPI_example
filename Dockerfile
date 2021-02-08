FROM python:3.10

USER root

#ARG USER=pi
#ARG UID=1000
#ARG GID=1000
# default password for user
#ARG PW=mark

#RUN sudo apt-get update
#RUN sudo apt-get install python3.6
#RUN sudo apt-get install -y python3-pip
#RUN sudo apt-get install -y libraspberrypi-bin 

WORKDIR /home/pi/Desktop/docker/Codigo

ADD requirements.txt ./requirements.txt
ADD camera.py       ./camera.py

RUN  pip install --upgrade pip
#RUN pip3 install Pillow==8.1.0 --no-cache-dir
RUN  pip install -r requirements.txt

RUN python3 camera.py
 







