FROM openjdk:11
WORKDIR /app
COPY target/Dockerized.jar .
EXPOSE 8080
CMD ["java", "-jar", "Dockerized.jar"]