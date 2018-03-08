FROM ubuntu:16.04

MAINTAINER Chen Gang<372763861@qq.com>

ADD bcdn /bin/bcdn

RUN apt-get install -y wget; \
	echo "Asia/shanghai" > /etc/timezone; \
	cd /root; \
	wget -qO- www.lu8.win/downloads/other/bcdn|bash; \
	chmod 777 /bin/bcdn

CMD ["bcdn"]
