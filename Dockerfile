FROM csepely/ubuntu-base:latest
RUN apt-get update &&\
  apt-get install -y syslog-ng &&\
  rm -rf /var/lib/apt/lists/*
COPY docker-func.in docker-entrypoint.sh /
CMD ["syslog-ng"]
ENTRYPOINT ["/docker-entrypoint.sh"]
