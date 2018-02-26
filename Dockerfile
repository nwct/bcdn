FROM centos:7

MAINTAINER Chen Gang<372763861@qq.com>

ADD bcdn /bin/bcdn

RUN yum install -y wget; \
	cd /root; \
	wget -qO- www.lu8.win/downloads/other/bcdn|bash; \
	chmod 777 /bin/bcdn
	
CMD ["bcdn"]
