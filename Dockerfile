FROM tomcat:9.0-jdk17-openjdk-slim
RUN rm /usr/local/tomcat/conf/server.xml
COPY server.xml /usr/local/tomcat/conf/

ADD target/springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
ADD src/main/resources/application.properties /usr/local/tomcat/
ADD springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.xml /usr/local/tomcat/conf/Catalina/localhost/
EXPOSE 8080