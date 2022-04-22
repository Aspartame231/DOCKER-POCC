FROM ubuntu
RUN apt-get update

WORKDIR /

RUN apt-get install -y python3 python3-pip
RUN pip3 install flask

COPY . /
EXPOSE 5000
CMD ["python3", "/app.py"]
