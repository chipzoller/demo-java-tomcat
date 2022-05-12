FROM tomcat:9.0.58-jre8-temurin-focal
LABEL org.opencontainers.image.authors "jim@nirmata.com, chipzoller@gmail.com"
LABEL org.opencontainers.image.base.name "docker.io/tomcat:9.0.58-jre8-temurin-focal"
ADD build/libs/service.war /usr/local/tomcat/webapps/service.war

ENTRYPOINT ["catalina.sh", "run"]
