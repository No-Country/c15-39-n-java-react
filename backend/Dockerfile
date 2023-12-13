FROM gradle:6.7.1-jdk11 AS build
COPY . .
RUN gradle build

FROM openjdk:11
COPY -from=build /build/libs/backend-0.0.1-SNAPSHOT.jar backend.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","/backend.jar"]