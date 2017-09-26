FROM centos:7

MAINTAINER André Mendonça <andreluizmb@gmail.com>

RUN yum install -y wget rpm-build gcc make zlib-devel pcre-devel libX11-devel libXpm-devel libtiff-devel libjpeg-devel libpng-devel gtk2-devel libpaper-devel
# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV TED_VERSION "2.23"
ENV TED_FILE_NAME "ted-${TED_VERSION}.src.tar.gz"
ENV TED_URL "http://ftp.nluug.nl/pub/editors/ted/${TED_FILE_NAME}"

# install ted
RUN wget ${TED_URL}
RUN rpmbuild -ta ${TED_FILE_NAME} --rmsource
RUN rpm -i "~/rpmbuild/RPMS/x86_64/ted-${TED_VERSION}-1.x86_64.rpm"

WORKDIR /source

ENTRYPOINT ["/usr/bin/Ted"]

CMD ["--help"]
