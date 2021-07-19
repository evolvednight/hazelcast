FROM adoptopenjdk/openjdk11:latest
ARG JAR_FILE=target/*.jar
ADD target/.jar app.jar
EXPOSE 80
ENTRYPOINT ["java","-jar","/app.jar"]