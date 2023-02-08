pipeline {
    agent any
    stages{
        stage('Docker Version'){
            steps{
                sh 'docker --version'
            }
        }
        stage('GIT Version'){
            steps{
                sh 'git --version'
            }
        }
        stage('Build Docker Image'){
            environment{
                NAME="imageagain"
            }
            steps{
                sh 'docker build -t ${env.NAME}:${BUILD_NUMBER} .'
                sh 'docker images'
            }
        }
    }
}
