FROM openjdk:17-jdk-alpine

WORKDIR /my-mav-app

COPY pom.xml .

COPY src /my-mav-app/src

COPY target/my-mav-app-0.0.1-SNAPSHOT.jar /my-mav-app/my-mav-app-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "/my-mav-app/my-mav-app-0.0.1-SNAPSHOT.jar"]