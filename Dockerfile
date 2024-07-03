# Use the official OpenJDK image from the Docker Hub
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the wait-for-it script into the image
COPY wait-for-it.sh /app/wait-for-it.sh

# Copy the packaged jar file into the container at /app
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Specify the command to run your Spring Boot application
CMD ["/app/wait-for-it.sh", "mysql-container:3306", "--", "java", "-jar", "demo.jar"]