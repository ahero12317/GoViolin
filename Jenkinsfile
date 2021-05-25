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
     
		script{
		      dockerImage = docker.build registry					
}
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
    
