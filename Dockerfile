FROM node

RUN apt-get update
RUN apt-get install -y vim telnet supervisor

# setup
COPY setup /setup
RUN chmod +x /setup/setup.sh && /setup/setup.sh 

RUN mkdir /data
EXPOSE 5002
VOLUME [ "/data" ]

CMD ["/run.sh"]
