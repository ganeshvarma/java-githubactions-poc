# Use a base image with Java installed
FROM openjdk:11-jre-slim
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy the jar file to the container
COPY target/java-githubactions-poc-1.0-SNAPSHOT.jar /app/my-java-app.jar
 
# Command to run the jar file
ENTRYPOINT ["java", "-jar", "/app/my-java-app.jar"]
