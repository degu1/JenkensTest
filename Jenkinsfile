pipeline {
    agent any
    tools {
        maven 'Maven 3.6.3'
    }
    environment {
        registry = "anishnath/mkdocs"
        registryCredential = 'docker-creds'
        dockerImage = ''
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean test'
            }

        }
        stage('Test'){
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy'){
            steps {
                sh 'mvn package'
            }
        }
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build -t jenkintest:1.0
                }
            }
        }
    }
}