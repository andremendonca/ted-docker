FROM centos:7

MAINTAINER André Mendonça <andreluizmb@gmail.com>

# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV TED_VERSION "2.23"
ENV TED_URL "http://ftp.nluug.nl/pub/editors/ted/ted-${TED_VERSION}-1.i386.rpm"

# install ted
RUN sudo rpm -i ${TED_URL}

ENTRYPOINT ["Ted"]

CMD ["--help"]
