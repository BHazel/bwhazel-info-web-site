FROM python:3.9.2
LABEL maintainer="Benedict W. Hazel"

COPY /src/requirements.txt /tmp/requirements.txt
WORKDIR /tmp
RUN pip install -r requirements.txt

WORKDIR /

EXPOSE 8000