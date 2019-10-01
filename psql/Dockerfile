FROM alpine

RUN apk update && \
    apk add postgresql-client && \
    rm /var/cache/apk/*

ENTRYPOINT ["psql"]
CMD ["--help"]
