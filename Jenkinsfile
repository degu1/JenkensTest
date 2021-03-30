pipeline {
    agent any
    tools {
        maven 'Maven 3.6.3'
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
    }
}