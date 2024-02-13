pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Herme02/Calculadora.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mkdir -p webapps/Calculadora'
                sh 'cp -r * webapps/Calculadora'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Despliegue exitoso'
            }
        }
    }
}
