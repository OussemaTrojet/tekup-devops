FROM tomcat:9.0-jdk17-openjdk-slim
ARG WAR_FILE=target/*.war
COPY ${WAR_FILE} /usr/local/tomcat/webapps/app.war
EXPOSE 8080