pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('build docker container prod and registry') {
            steps {
		sh 'echo $GIT_COMMIT'
		sh 'docker build -t prod_app .'
		sh 'hostname'
                sh 'ls -la'
            	sh 'docker-compose up'
            }         
        }
    }
}	 	
