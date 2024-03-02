FROM java:8
ADD target/demo-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/demo/demo-1.0-SNAPSHOT-jar-with-dependencies.jar
CMD ["java","-jar","/opt/demo/demo-1.0-SNAPSHOT-jar-with-dependencies.jar"]
# FROM maven:3.8.5-openjdk-17 AS build
# COPY . .
# RUN mvn clean package -DskipTests
# FROM openjdk:17-slim
# COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar 
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","demo.jar"]
