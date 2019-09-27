FROM alpine

RUN apk update && \
    apk add mysql-client && \
    rm /var/cache/apk/*

ENTRYPOINT ["mysql"]
CMD ["--help"]
