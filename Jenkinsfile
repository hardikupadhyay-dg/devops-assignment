pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install --upgrade pip'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'python -m unittest discover'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-assignment .'
            }
        }
    }
}
