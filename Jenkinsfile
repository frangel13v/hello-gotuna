pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/frangel13v/hello-gotuna'

            }
        }
        stage('Build') {
            steps {
                sh "docker-compose build"
            }
        }
        stage('Deploy') {
            steps {
                sh "docker-compose up -d"
            }
        }
    }
}
