FROM openjdk:19-jdk-alpine3.16
ADD /target/JacocoExample-0.0.1-SNAPSHOT app.jar
EXPOSE 80
CMD java - jar app.jar
