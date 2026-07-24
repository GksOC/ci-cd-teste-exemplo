pipeline {

    agent any

    stages {
        stage('Instalação das dependencias') {
            steps {
                bat 'npm install'
            }
        }

        stage('Execução dos testes') {
            steps {
                bat 'npm run cy:run'
            }
        }
    }

}