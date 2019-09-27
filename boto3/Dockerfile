FROM python:alpine

RUN apk update && \
    apk add groff nano && \
    pip install boto3 --upgrade && \
    rm /var/cache/apk/*
