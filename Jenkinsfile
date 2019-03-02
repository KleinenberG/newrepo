pipeline {
  agent { label'agent1' }
  environment {
    registry = "kleinenberg/boxefuse_prod"
    registryCredantial = '5a61a739-6ebd-4984-9524-7dee5f195b3f'
  } 	    
  stages {
    stage ('build docker container prod') {
      steps {
        script{
          DockerImage = docker.build "$registry:$BUILD_ID"
	  DockerImage.inside {
            hostname
            sh 'hostname'
          }
        }
        sh 'docker images'
        sh 'env'
            }         
        }
    }
}	 	
