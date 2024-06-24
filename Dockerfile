# Use the official OpenJDK image from the Docker Hub
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file into the container at /app
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "demo.jar"]
