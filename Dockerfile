# Use Java 21 lightweight image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml first to cache dependencies
COPY pom.xml mvnw ./
COPY .mvn .mvn

RUN ./mvnw dependency:go-offline

# Copy the rest of the code
COPY . .

# Build the Spring Boot JAR
RUN ./mvnw clean package -DskipTests

# Expose default Spring Boot port
EXPOSE 8080

# Start the app
ENTRYPOINT ["java", "-jar", "target/app-0.0.1-SNAPSHOT.jar"]

