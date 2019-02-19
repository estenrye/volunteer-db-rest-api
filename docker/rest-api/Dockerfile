# Build Stage
#  - Compiles rest-api using JDK and Gradle.
#  - Automatically discarded after build is complete.
FROM openjdk:11.0.2-jdk-stretch AS build
ADD https://downloads.gradle.org/distributions/gradle-5.2.1-bin.zip /tmp/gradle.zip
WORKDIR /opt
RUN unzip /tmp/gradle.zip
COPY src /rest-api/src
COPY build.gradle /rest-api
WORKDIR /rest-api
RUN /opt/gradle-5.2.1/bin/gradle build --stacktrace --info --debug

# Runtime Image
#  - Copies build artifact out of Build stage into much smaller JRE runtime image.
FROM openjdk:11.0.2-jre-stretch
EXPOSE 5000
WORKDIR /opt/rest-api
COPY --from=build /rest-api/build/libs/rest-api-0.0.1-SNAPSHOT.jar rest-api.jar
COPY docker/rest-api/application.properties config/application.properties
ENTRYPOINT java -jar rest-api.jar flywayMigrate && java -jar rest-api.jar