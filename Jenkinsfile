pipeline {
    agent any
    options{
        timestamps ()
        timeout(time: 10, unit: 'SECONDS')
         skipDefaultCheckout() 
         buildDiscarder(logRotator(numToKeepStr: '10'))
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

            steps{
                sh 'docker build -t imageagain${BUILD_NUMBER}:${BUILD_NUMBER} .'
                sh 'docker images'
//                 sh 'docker image inspect imageagain:18'
                sh 'docker image prune --filter "until=6hrs"'
                sh 'docker kill $(docker ps -q)'
                sh 'docker rm $(docker ps -a -q)'
                sh 'docker container ls'
                sh 'docker images'
            }
        }
        stage('deploy') {
            steps{
            retry(3){
                
                sh 'docker run -d --name container${BUILD_NUMBER} imageagain44:44'
                sh 'docker container ls'
                }
            }
        }      
    }
}
