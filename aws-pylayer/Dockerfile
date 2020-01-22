FROM amazonlinux:1

COPY package.sh /package.sh

RUN yum update -y && \
    yum install -y python36 zip && \
    chmod +x /package.sh

VOLUME /workdir

ENTRYPOINT ["/package.sh"]
