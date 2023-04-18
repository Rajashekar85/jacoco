FROM maven:amazoncorretto as build
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:9
COPY --from=build /app/target/*.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
