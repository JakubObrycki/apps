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
            }
        }
            steps {
                sh '''
                    pip3 install kivy 
                    apt-get update kivy 
                    python3 main.py
                '''
                //docker build -t my-apps .
            }
        }
    }
}