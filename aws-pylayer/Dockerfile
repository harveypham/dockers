FROM amazonlinux:1

COPY package.sh /package.sh

RUN yum update -y && \
    yum install -y zip python3-pip && \
    chmod +x /package.sh

VOLUME /workdir

ENTRYPOINT ["/package.sh"]
