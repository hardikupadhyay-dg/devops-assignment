pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                bat 'python -m pip install --upgrade pip'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'python -m unittest discover'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-assignment .'
            }
        }
    }
}
