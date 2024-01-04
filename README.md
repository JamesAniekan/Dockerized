
Dockerized
This project exemplifies the power of containerization, utilizing Docker, Jenkins, Maven, and AWS to create a robust continuous deployment pipeline.

Technologies Used:
Jenkins:
Jenkins orchestrates the CI/CD pipeline. It automates the processes of fetching source code, building artifacts, and deploying Dockerized applications.

Maven:
Maven is the build automation tool, ensuring consistency and efficiency in managing project dependencies, compiling source code, and creating Docker-ready artifacts.

Docker:
Docker enables containerization, encapsulating our application and its dependencies in a lightweight, portable container. This approach ensures consistency across various environments and simplifies deployment.

Docker Hub:
Docker Hub serves as a centralized container registry where images are stored.

AWS EC2 Instances:
Provide the scalable compute resources for hosting and running our Dockerized application. 

Project Workflow(Jenkinsfile):
The pipeline includes stages for Maven-based build, Docker image creation, and deployment on DockerHub and AWS EC2.
Project's source code resides in a version control system, GitHub. Jenkins monitors this repository for changes. The checkout and build stage clones the code from github and builds it using maven. 

The 'build app image' stage builds and tags a docker image from the build artifact using the project's Dockerfile which defines the container configurations.

In the next stage, Jenkins authenticates with DockerHub using pre-configured credentials and pushes the built docker image to the repository.

Finally, the image is pulled from the repository ans deployed into an EC2 instance where the container is run off of the image.

Conclusion:
This DevOps project showcases the synergy of Jenkins, Maven, Docker, Docker Hub, and AWS in creating a streamlined and efficient CI/CD pipeline. By using containerization, greater consistency, scalability, and flexibility in deploying our applications is achieved.
