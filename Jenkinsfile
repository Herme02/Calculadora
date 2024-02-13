pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Paso de construcción - Ejemplo con Maven
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Paso de prueba - Ejemplo con Maven
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                // Paso de despliegue - Aquí puedes agregar los comandos necesarios para desplegar la aplicación
            }
        }
    }
}
