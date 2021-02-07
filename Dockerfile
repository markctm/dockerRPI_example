FROM python:3.8

WORKDIR /usr/src/app

ADD requirements.txt ./requirements.txt  
ADD app ./app

RUN pip install --upgrade pip; \
    pip install -r requirements.txt

EXPOSE 8888

ENV FLASK_APP=app
ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=8888"]
