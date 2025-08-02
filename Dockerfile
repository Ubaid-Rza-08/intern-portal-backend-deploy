# Use a Java 21 JDK base image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the jar file (replace with your actual jar name)
COPY target/*.jar app.jar

# Expose port (optional but useful if your app listens on 8080)
EXPOSE 8080

# Command to run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
