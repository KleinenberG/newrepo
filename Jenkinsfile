pipeline {
  agent { label'agent1' }
  environment {
    registry = "Kleinenberg/boxefuse_prod"
    registryCredantial = 'dickerHUB'
  } 	    
  stages {
    stage ('build docker container prod and registry') {
      steps {
        DockerImage = docker.build(registry + "$BUILD_NUMBER")
	sh 'docker images'
            }         
        }
    }
}	 	
