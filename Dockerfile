FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.war app.war

# Set the PATH environment variable to include LibreOffice
ENTRYPOINT ["java","-jar","/app.war"]