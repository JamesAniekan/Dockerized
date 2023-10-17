FROM openjdk:11
WORKDIR /app
COPY target/Dockerized-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java", "-jar","Dockerized-0.0.1-SNAPSHOT.jar"]