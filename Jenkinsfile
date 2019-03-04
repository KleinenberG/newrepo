pipeline {
  agent { label'agent1' }
  environment {
    registry = "kleinenberg/boxefuse_prod"
    registryCredantial = '5a61a739-6ebd-4984-9524-7dee5f195b3f'
    dockerImage = ''
  } 	    
  stages {
    stage ('build docker container prod') {
      steps {
        script{
          dockerImage = docker.build "$registry:$BUILD_ID"
        }
      }
    }
    stage ('push docker image to registry') {
      steps{
        script {
          docker.withRegistry( '', registryCredantial ) {
            dockerImage.push()  
          }
        }
      }
    }
  }
}	 	
