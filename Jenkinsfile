pipeline {
    agent any
    stages {
        stage('Demo Credentials') {

            steps {
                withCredentials([
                    usernamePassword(credentialsId: 'github_login', usernameVariable: 'USER', passwordVariable: 'PASS'),
                    sshUserPrivateKey(credentialsId: 'ssh-key', keyFileVariable: 'KEY', usernameVariable: 'SSHUSER'),
                    string(credentialsId: 'demo-khoa-bi-mat', variable: 'BIMAT')
                ]) {
                    echo "${USER} - ${PASS} - ${KEY} - ${SSHUSER} - ${BIMAT}"
                }

            }
        }
    }
}