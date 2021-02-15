FROM raspbian/fpixel

USER root
WORKDIR /home/pi/Desktop/ex_docker/dockerRPI_example

RUN apt-get update
RUN apt-get install -y python3-pip
RUN apt-get install -y libraspberrypi-bin


ADD requirements.txt ./requirements.txt
ADD camera.py       ./camera.py

RUN  python3 -m pip install  --upgrade pip
RUN  python3 -m pip install  -r requirements.txt 

RUN python3 camera.py
 







