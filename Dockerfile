FROM centos:7


ADD frps.ini /frps.ini

RUN chmod 777 /bin/frps

#ENTRYPOINT ["/start.sh"]
CMD /bin/frps -c /frps.ini
#CMD ["/start.sh"]
