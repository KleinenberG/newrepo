pipeline {
  agent { label'agent1' }
  environment {
    registry = "kleinenberg/boxefuse_prod"
    registryCredantial = 'dickerHUB'
  } 	    
  stages {
    stage ('build docker container prod') {
      steps {
        script{
          DockerImage = docker.build registry
	}
        sh 'docker images'
        sh 'env'
            }         
        }
    }
}	 	
