FROM openjdk:17-jdk-slim

WORKDIR /my-mav-app

COPY pom.xml .

COPY src /my-mav-app/src

COPY target/my-mav-app-1.0.jar /my-mav-app/my-mav-app-1.0.jar

ENTRYPOINT ["java", "-jar", "/my-mav-app/my-mav-app-1.0.jar"]