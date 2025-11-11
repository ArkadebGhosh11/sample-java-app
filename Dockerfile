# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/demo-1.0.0.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "/app/app.jar"]