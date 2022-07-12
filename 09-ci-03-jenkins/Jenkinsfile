pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                dir('vector-role') {
                    git credentialsId: 'df82c097-9401-4e96-9625-d8a8e352debe', url: 'git@github.com:emilsuleymanov/vector-role.git'
                }
            }
        }
        stage('Molecule') {
            steps {
                dir('vector-role') {
                    sh 'molecule --version'
                    sh 'molecule test'
                }
            }
        }
    }
}
