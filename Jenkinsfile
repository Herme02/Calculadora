pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout del repositorio
                git 'https://github.com/Herme02/Calculadora.git'
            }
        }
        stage('Build') {
            steps {
                // Crear la carpeta webapps/Calculadora si no existe
                sh 'mkdir -p $CATALINA_HOME/webapps/Calculadora'
                // Compilación de la aplicación JSP (en este caso, asumimos que es solo copiar archivos JSP)
                sh 'cp -r * $CATALINA_HOME/webapps/Calculadora'
            }
        }
        stage('Deploy') {
            steps {
                // Reiniciar el servidor Tomcat para desplegar la aplicación
                sh 'sudo service tomcat restart'
            }
        }
    }
}
