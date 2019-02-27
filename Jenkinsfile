pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('build docker container prod and registry') {
            steps {
                sh 'docker-compose up'
            }         
        }
    }
}	 	
