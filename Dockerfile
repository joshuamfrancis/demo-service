# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Copy the built JAR file into the image
COPY my-spring-boot-app.jar /app/app.jar

# Set the working directory in the container
# WORKDIR /app



# Expose port 8080 if your application runs on it
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
