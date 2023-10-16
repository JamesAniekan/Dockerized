pipeline{
    agent any
    tools{
        maven '3.9.4'
    }
    stages{
        stage('Checkout and build jar'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/JamesAniekan/Dockerized.git']])
                sh 'mvn clean package'
            }
        }
        stage('Build app image'){
            steps{
                script{
                    sh 'docker build -t anijames/my-dockerized-app:latest .'

                }
            }
        }
        stage('Push to dockerHub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpass', variable: 'dockerhubpass')]) {
                        sh 'docker login -u anijames -p ${dockerhubpass}'
                    }
                    sh 'docker push anijames/my-dockerized-app:latest'
                }
            }
        }
        stage('Pull and run image on EC2'){
             steps{
               script{
                    def pullImage = 'docker pull my-dockerized-app:latest'
                    def runImage = 'docker run -p 8081:8080 my-dockerized-app:latest'
                    sshagent(['docker-key']){
                        sh "ssh -o StrictHostKeyChecking=no ubuntu@16.171.149.102 ${pullImage}"
                        sh "ssh -o StrictHostKeyChecking=no ubuntu@16.171.149.102 ${runImage}"
                    }
               }
             }
        }
    }
}