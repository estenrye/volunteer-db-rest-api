FROM ubuntu:18.04
EXPOSE 5000
WORKDIR /rest-api
COPY build/libs/rest-api-0.0.1-SNAPSHOT.jar rest-api.jar
COPY docker/rest-api/application.properties config/application.properties
RUN apt-get update && apt-get install openjdk-8-jre -y
ENTRYPOINT java -jar rest-api.jar flywayMigrate && java -jar rest-api.jar