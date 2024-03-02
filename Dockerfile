# Use Maven wrapper to build the project
FROM maven:3.8.4-openjdk-17 AS builder
WORKDIR /app

# Copy the Maven wrapper files
COPY mvnw .
COPY .mvn .mvn

# Copy the Maven project description files
COPY pom.xml .

# Resolve Maven dependencies
RUN ./mvnw dependency:go-offline

# Copy application source code
COPY src src

# Build the application
RUN ./mvnw package -DskipTests

# Final stage: Create the JAR file
FROM openjdk:17 AS final
WORKDIR /app

# Copy the JAR file from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Command to run the application when the container starts
CMD ["java", "-jar", "app.jar"]

# Expose the port your app runs on
EXPOSE 8080

# FROM maven:3.8.5-openjdk-17 AS build
# COPY . .
# RUN mvn clean package -DskipTests
# FROM openjdk:17-slim
# COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar 
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","demo.jar"]
