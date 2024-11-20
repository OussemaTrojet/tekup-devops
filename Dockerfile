FROM tomcat:9

RUN rm -fr /usr/local/tomcat/webapps/ROOT

COPY target/springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
ADD src/main/resources/application.properties /usr/local/tomcat/
ADD springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.xml /usr/local/tomcat/conf/Catalina/localhost/


EXPOSE 8080 8443
CMD ["catalina.sh", "run"]