FROM python:3.9.2
LABEL maintainer="Benedict W. Hazel"

RUN pip install mkdocs-material

EXPOSE 8000