FROM csepely/ubuntu-base:latest
RUN apt-get update &&\
  apt-get install -y syslog-ng &&\
  rm -rf /var/lib/apt/lists/*
COPY docker.init/ /docker.init
CMD ["start"]
ENTRYPOINT ["/docker.init/docker-entrypoint.sh"]
