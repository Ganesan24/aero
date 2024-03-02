# Use OpenJDK 17 as the base image
FROM openjdk:17 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY src /app/src
COPY pom.xml /app

# Build the JAR file using Maven
#RUN ./mvnw clean package

# Use a lightweight OpenJDK 17 image for the final runtime image
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the builder stage to the runtime image
COPY --from=builder /app/target/*.jar /app/demo.jar

# Specify the command to run the JAR file
CMD ["java", "-jar", "demo.jar"]

# Expose port 8080
EXPOSE 8080


# COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar 
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","demo.jar"]
