pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('build docker container prod and registry') {
            steps {
		sh 'hostname'
                sh 'ls -la'
            	sh 'docker-compose up'
            }         
        }
    }
}	 	
