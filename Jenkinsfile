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
            
            steps{
                sh 'docker build -t imageagain${BUILD_NUMBER}:${BUILD_NUMBER} .'
                sh 'docker images'
            }
        }
        stage('deploy') {
            steps{
            retry(3){
                
                sh 'docker -version'
                }
            }
        }      
    }
}
