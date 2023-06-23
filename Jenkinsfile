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
                dir('nginx-compose'){
                sh 'docker-compose up -d'
                }
            }
        }
        
        stage('Check Status') {
            steps {
                dir('nginx-compose'){
                sh 'chmod +x check-status.sh'  // Give executable permissions
                sh './check-status.sh'
                }
            }
        }
        
        stage('Check Connection') {
            steps {
                dir('nginx-compose'){
                sh 'chmod +x check-connection.sh'  // Give executable permissions
                sh './check-connection.sh'
                }
            }
        }
    }
}
