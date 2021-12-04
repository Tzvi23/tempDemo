pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'java --version'
                sh 'mvn --version'
                sh '''
                    sed -i 's/TESTUSER/NEW_TEST_USER/' src/main/java/com/mycompany/app/cred
                    sed -i 's/TESTPASSWORD/New password: 12345/' src/main/java/com/mycompany/app/cred
                    mvn package
                    java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
                '''
            }
        }
    }
}
