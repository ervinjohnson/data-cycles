FROM 115labs/grails:2.2.1

RUN apt-get update

# set timezone to UTC
RUN apt-get install -y tzdata locales
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get install -y mysql-client
RUN apt-get install -y python
RUN apt-get install -y s3cmd

ENTRYPOINT []