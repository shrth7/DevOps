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
        stage('deploy-test') {
           try {
                sh 'docker -version'
           } catch(error) {
             echo "First build failed, let's retry if accepted"
             retry(2) {
                input "Retry the job ?"
                sh 'docker -version'
             }
           }
        }
    }
}
