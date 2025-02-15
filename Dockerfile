ARG JAR_FILE
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Add a build argument to pass the .jar file path
ARG JAR_FILE

# Copy the JAR file into the container
COPY ${JAR_FILE} app.jar

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app.jar"]
