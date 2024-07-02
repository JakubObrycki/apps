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
                    sudo apt-get install python3 -y
                    python --version
                    docker build -t my-app .
                '''
            }
        }
    }
}