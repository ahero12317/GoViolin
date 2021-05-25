pipeline {

    agent any
  environment{

	registry = "ahero12317/goviolin" 

        registryCredential = 'dockerhub' 

        dockerImage = '' 


}
    options{
	 timeout(time: 1, unit: 'HOURS') 
}
  
    stages {

        stage('Build') {
            steps {   
     
		sh 'sudo docker build -t ahero12317/goviolin'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing to Dockerhub repo'
		script{
		      docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 

                    }

		}
            }
        }

  }

}
    
