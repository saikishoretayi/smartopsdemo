FROM openjdk:17-jdk-buster
USER root
ADD smartops-server 
RUN smartops-server
RUN chmod 777 -R /opt/smartops-application
EXPOSE 8080:8080
CMD ["smartops-server/bin/catalina.sh","run"]
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
