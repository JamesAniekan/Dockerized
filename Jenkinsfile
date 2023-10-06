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
                    sh 'docker build -t my-dockerized-app .'

                }

            }
        }
    }
}