FROM openjdk:11
WORKDIR /app
COPY /var/lib/jenkins/workspace/dockerized/target/Dockerized-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java", "-jar", "Dockerized.jar"]