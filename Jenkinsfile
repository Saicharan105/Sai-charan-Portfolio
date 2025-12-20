Pipeline{
    agent any

    Stages {
        stage('checkout code'){
            steps{
                git 'https://github.com/Saicharan105/Sai-charan-Portfolio.git'
            }
        }
        stage('Build Docker Image'){
            steps{
                sh 'docker build -t portfolio-app .'
            }
        }
        stage('Run Docker Container'){
            sh 'docker rm -f portfolio-container || true'
            sh 'docker run -itd -p 8080:80 --name portfolio-container portfolio-app'
        }
    }
}