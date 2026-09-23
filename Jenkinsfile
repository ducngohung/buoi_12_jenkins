pipeline {
    agent any

    environment {
        IP_SERVER = '157.230.253.126'
        DEPLOY_PATH = '/root/buoi_12_jenkins'
    }

    stages {
        stage("Demo") {

            steps {
                withCredentials([
                    sshUserPrivateKey(credentialsId: 'ssh-key', keyFileVariable: 'KEY', usernameVariable: 'USER')
                ]) {
                    sh """
                    ssh -o StrictHostKeyChecking=no -i ${KEY} ${USER}@${IP_SERVER} '
                        cd ${DEPLOY_PATH} && git pull
                        docker-compose down
                        docker-compose build
                        docker-compose up -d
                    '
                    """
                }
            }
        }
    }
}