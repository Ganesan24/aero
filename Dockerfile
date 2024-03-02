#
# Build stage
#
FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /Main
COPY . /Main/
RUN mvn clean package

#
# Package stage
#
FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /Main/target/*.jar /Main/Main.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","Main.jar"]

#
# Build stage
#
# FROM maven:3.8.3-openjdk-17 AS build
# WORKDIR /app
# COPY . /app/
# RUN mvn clean package

# #
# # Package stage
# #
# FROM openjdk:17-alpine
# WORKDIR /app
# COPY --from=build /app/target/*.jar /app/app.jar
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","app.jar"]
