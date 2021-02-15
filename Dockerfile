FROM raspbian/fpixel

USER root
WORKDIR /home/pi/Desktop/ex_docker/dockerRPI_example

RUN apt-get update
RUN apt-get install -y python3-pip
RUN apt-get install -y libraspberrypi-bin
RUN apt-get install libtiff5-dev libjpeg8-dev libopenjp2-7-dev zlib1g-dev \libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python3-tk \ libharfbuzz-dev libfribidi-dev libxcb1-dev

ADD requirements.txt ./requirements.txt
ADD camera.py       ./camera.py


RUN  python3 -m pip install  --upgrade pip
RUN  python3 -m pip install  -r requirements.txt 

RUN python3 camera.py
 







