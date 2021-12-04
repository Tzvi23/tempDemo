pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'java --version'
                sh 'mvn --version'
                sh '''
                    mvn package
                    java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
                '''
            }
        }
    }
}
