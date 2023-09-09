# Use a base image with Java and a specific version
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/PracticeDns-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot application listens on
EXPOSE 8082

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
