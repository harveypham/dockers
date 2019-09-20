FROM alpine

RUN apk update && \
    apk add mysql-client

ENTRYPOINT ["mysql"]
CMD ["--help"]
