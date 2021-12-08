#FROM ubuntu:latest
#RUN apt-get update -y
#RUN apt-get install -y python3-pip python3-dev build-essential
#COPY . /app
#WORKDIR /app 
#RUN pip3 install -r requirements.txt
##ENTRYPOINT ['python3']
#CMD ["python3", "main.py"]
#EXPOSE 5000



FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5000"]

EXPOSE 5000

