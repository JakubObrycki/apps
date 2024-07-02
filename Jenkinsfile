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
                image python:3.10-alpine
                reuseNode true
                args '-u root:root'
            }
        }
            steps {
                sh '''
                    apt-get install python3 -y
                    python --version
                    python -m venv kivy_venv
                    python3 main.py
                '''
                //docker build -t my-app .
            }
        }
    }
}