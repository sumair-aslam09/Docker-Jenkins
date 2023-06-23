pipeline {
    agent any

    stages {
        stage('Workspace clean'){
            steps {
                cleanWs()
            }
        }
        stage('Clone Repository') {
            steps {
                sh 'git clone https://github.com/sumair-aslam09/sumair.git'
            }
        }
        stage('Start Docker Compose') {
            steps {
                dir('sumair'){
                sh 'docker-compose up -d'
                }
            }
        }
        stage('Validation') {
            steps {
                dir('sumair'){
                sh 'chmod +x validation.sh'  
                sh './validation.sh'
                }
            }
        }
    }
}    
