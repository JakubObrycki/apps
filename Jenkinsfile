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
                image "python:3.9-alpine"
                reuseNode true
            }
        }
            steps {
                sh '''
                    pip --version
                    pip install --upgrade pip
                    python3 -m venv kivy_venv
                    pip install kivy
                    python3 main.py
                '''
                //docker build -t my-app .
            }
        }
    }
}