FROM amazonlinux:1

COPY package.sh /package.sh

RUN yum update -y && \
    yum install -y python3 python3-pip zip && \
    chmod +x /package.sh

VOLUME /workdir

ENTRYPOINT ["/package.sh"]
