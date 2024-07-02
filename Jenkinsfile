pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Kubsoon98/apps.git']])
            }
        }
    stage('Build') {
      
            steps {
                sh '''
                    python --version
                    docker build -t my-app .
                '''
            }
        }
    }
}