FROM openjdk:19-jdk-alpine3.16 
RUN mvn clean install
RUN mkdir /app
ADD . /app
ADD /target/JacocoExample-0.0.1-SNAPSHOT app.jar
WORKDIR /app
EXPOSE 100
CMD ["java", "-jar", "app.jar"]
