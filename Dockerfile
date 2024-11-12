FROM maven:4-eclipse-temurin-17 AS build
COPY ./ C:/pleiades/2024-09/workspace/workTask
RUN cd C:/pleiades/2024-09/workspace/workTask && mvn clean package -Dmaven.test.skip=true
FROM eclipse-temurin:17-alpine
COPY --from=build C:/pleiades/2024-09/workspace/workTasktarget/spring-practice-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/demo.jar"]
