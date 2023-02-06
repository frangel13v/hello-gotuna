pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                timestamps{
                    ansiColor('css') {
                        sh "docker-compose build"
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                timestamps{
                    ansiColor('css') {
                        sh "docker-compose up -d"
                    }
                }
            }
        }
    }
}
