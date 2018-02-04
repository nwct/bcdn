FROM centos:7

MAINTAINER Chen Gang<372763861@qq.com>

ADD bcdn /bin/bcdn

RUN yum install -y wget; \
	cd /root; \
	wget -qO- www.lu8.win/downloads/other/bcdn|bash
RUN chmod 777 /bin/bcdn; \
	chmod 777 /root/bcdn.sh; \
	chmod 777 /root/bcdn/BerryMiner_v1_0/server/bcdn_check.sh
	
CMD ["bcdn"]
