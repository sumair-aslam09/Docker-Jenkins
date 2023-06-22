pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your/repo.git'
            }
        }
        
        stage('Start Docker Compose') {
            steps {
                sh 'docker-compose up -d'
            }
        }
        
        stage('Check Status') {
            steps {
                sh 'chmod +x check-status.sh'  // Give executable permissions
                sh './check-status.sh'
            }
        }
        
        stage('Check Connection') {
            steps {
                sh 'chmod +x check-connection.sh'  // Give executable permissions
                sh './check-connection.sh'
            }
        }
    }
}

