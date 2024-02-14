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
        // Crear directorio Calculadora dentro de webapps
        sh 'mkdir -p webapps/Calculadora'
        // Copiar archivos y directorios necesarios a Calculadora
        sh 'cp -r Jenkinsfile build src webapps/* webapps/Calculadora/'
    }
}
        stage('Deploy') {
            steps {
                echo 'Despliegue exitoso'
            }
        }
    }
}
