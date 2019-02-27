pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('build docker container prod and registry') {
            steps {
		docker-compose build --no-cache
            }         
        }
    }
}	 	
