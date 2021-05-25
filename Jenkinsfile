pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'Testing..'
		sh 'go test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'sudo docker build -t ahero12317/goviolin'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing to Dockerhub repo'
		sh 'sudo docker push ahero12317/goviolin'
            }
        }
    }
}}    
