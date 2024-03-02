# Use OpenJDK 17 as the base image for the builder stage
FROM openjdk:17 AS builder

# Set the working directory inside the container
WORKDIR /Main

# Copy the Maven Wrapper script and the project configuration files
# COPY mvnw .
# COPY mvnw.cmd .
# COPY .mvn .mvn
COPY pom.xml .

# Copy the project source code
COPY src src

# Build the JAR file using Maven
RUN ./mvnw clean package

# Use a lightweight OpenJDK 17 image for the final runtime image
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /Main

# Copy the JAR file from the builder stage to the runtime image
COPY --from=builder /Main/target/*.jar /app/Main.jar

# Expose the port on which the application will run (if necessary)
EXPOSE 8080

# Specify the command to run the JAR file
CMD ["java", "-jar", "Main.jar"]
