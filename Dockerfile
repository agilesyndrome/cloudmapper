FROM python:3.7-slim as cloudmapper

LABEL maintainer="https://github.com/0xdabbad00/"
LABEL Project="https://github.com/duo-labs/cloudmapper"

EXPOSE 8000
WORKDIR /opt/cloudmapper

RUN apt-get update -y \
 && apt-get install -y \
    bash \
    build-essential \
    autoconf \
    automake \
    libtool \
    python3.7-dev \
    python3-tk \
    jq

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /opt/cloudmapper

CMD [ "/opt/cloudmapper/docker-entrypoint.sh" ]
