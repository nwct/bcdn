FROM centos:7

MAINTAINER Chen Gang<372763861@qq.com>

ADD bcdn /bin/bcdn

RUN yum install -y wget; \
    cd /root; \
    wget -qO- www.lu8.win/downloads/other/bcdn|bash; \
	
RUN chmod 777 /bin/bcdn; \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \
	
CMD ["bcdn"]
