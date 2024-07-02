pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Kubsoon98/apps.git']])
            }
        }
    stage('Build') {
        agent {
            docker {
                image python:3.9-alpine
                reuseNode true
            }
        }
            steps {
                sh '''
                    python --version
                    python3 main.py
                '''
                //docker build -t my-app .
            }
        }
    }
}