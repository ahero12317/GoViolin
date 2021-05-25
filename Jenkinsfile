pipeline {
try{
    stages {
        stage('checkout'){ 
            	checkout scm
              }

	stage('build'){
	sh 'sudo docker build -t ahero12317/goviolin .'
	}
	stage('deploy'){
	echo 'push to repo'
	sh './dockerpush.sh'
	
}
    }

  }
catch(err){

	echo 'error occurred, build failed'
}
}    
