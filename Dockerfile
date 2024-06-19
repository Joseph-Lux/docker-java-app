# Use the official OpenJDK image from the Docker Hub
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Compile the Java program
RUN javac App.java

# Run the Java program
CMD ["java", "App"]