FROM python:3.9-slim-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt
RUN apt-get -y update
RUN apt-get -y install git
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3","-u","main.py"]