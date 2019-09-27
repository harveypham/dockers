FROM python:alpine

RUN apk update && \
    apk add groff && \
    pip install boto3 --upgrade && \
    rm /var/cache/apk/*
