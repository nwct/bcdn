FROM centos:7

MAINTAINER Chen Gang<372763861@qq.com>

ADD bcdn /bin/bcdn

ENV TZ=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN yum install -y wget; \
	cd /root; \
	wget -qO- www.lu8.win/downloads/other/bcdn|bash; \
	
RUN chmod 777 /bin/bcdn; \

CMD ["bcdn"]

