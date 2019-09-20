FROM python:alpine

RUN apk update && \
    apk add groff && \
    pip install awscli --upgrade

ENTRYPOINT ["aws"]
CMD ["help"]
