pipeline {
    agent any
    options{
        timestamps ()
        timeout(time: 10, unit: 'SECONDS')
//         skipDefaultCheckout() 
//         buildDiscarder(logRotator(numToKeepStr: '10'))
    }
    
    stages{
        stage("Checking versions"){
        parallel{
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
    }
        }
        stage('Build Docker Image'){
//             hello
            steps{
                sh 'docker build -t imageagain${BUILD_NUMBER}:${BUILD_NUMBER} .'
                sh 'docker images'
                sh 'docker image inspect imageagain:18'
            }
        }
        stage('deploy') {
            steps{
            retry(3){
                
                sh 'docker run -d --name container1 imageagain${BUILD_NUMBER}'
                }
            }
        }      
    }
}
