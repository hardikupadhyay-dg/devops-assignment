// pipeline {
//     agent any

//     stages {
//         stage('Install Dependencies') {
//             steps {
//                 bat 'python -m pip install --upgrade pip'
//             }
//         }

//         stage('Run Tests') {
//             steps {
//                 bat 'python -m unittest discover'
//             }
//         }

//         stage('Build Docker Image') {
//             steps {
//                 bat 'docker build -t devops-assignment .'
//             }
//         }
//     }
// }



pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'docker build -t devops-assignment-test .'
                sh 'docker run --rm devops-assignment-test python -m unittest discover'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-assignment .'
            }
        }
    }
}
