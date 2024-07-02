pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Kubsoon98/apps.git']])
            }
        }
    stage('Build') {
        agent{
            docker{
                image "python:3.8.19-alpine"
                reuseNode true
            }
        }
            steps {
                sh '''
                    pip install --upgrade pip
                    apt-get update kivy
                    pip install kivy 
                    python3 main.py
                '''
                //docker build -t my-apps .
            }
        }
    }
}