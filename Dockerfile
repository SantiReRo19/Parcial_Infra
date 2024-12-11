#Pedro Bernal Londoño 2259548
#Santiago Reyes Rodriguez 2259738

FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
COPY user.db ./user.db
RUN mvn package
CMD ["java", "-jar", "target/sqlitedb-1.0-SNAPSHOT.jar"]
EXPOSE 8080
