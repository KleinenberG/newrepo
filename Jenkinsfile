pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('build docker container prod and registry') {
            steps {
		sh 'export GIT_COMMIT=`git log -n 1 --pretty=format:\'%s\'`'
		sh 'docker-compose build --no-cache'
            }         
        }
    }
}	 	
