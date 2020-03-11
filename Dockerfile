# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
# copy JAR into image
COPY target/back-0.0.1-SNAPSHOT.jar /app.jar 
# run application with this command line 
CMD ["/usr/bin/java", "-jar", "/app.jar"]
