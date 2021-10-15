FROM ubuntu:20.04

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

RUN apt-get -y install git

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "wordpot.py" ]