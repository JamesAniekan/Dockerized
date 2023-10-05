pipeline{
    agent any
    tools{
        maven '3.9.4'
    }
    stages{
        stage('Build'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/JamesAniekan/Dockerized.git']])
                sh 'mvn clean install'
            }
        }
    }
}