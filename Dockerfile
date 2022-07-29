FROM openjdk:17-jdk-buster
USER root
ADD smartops-server.tar.gz /usr/local/src/
WORKDIR /usr/local/src/
RUN tar xvfz smartops-server.tar.gz 
RUN mv /usr/local/src/smartops-server /opt/smartops-application
RUN chmod 777 -R /opt/smartops-application
EXPOSE 8080:8080
CMD ["/opt/smartops-application/bin/catalina.sh","run"]
