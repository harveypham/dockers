FROM python:alpine

RUN apk update && \
    apk add groff && \
    pip install awscli --upgrade && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["aws"]
CMD ["help"]
