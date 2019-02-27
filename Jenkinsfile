pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('build docker container prod and registry') {
            steps {
		sh 'export GIT_COMMIT=`git log -n 1 --pretty=format:\'%s\'`'
		sh 'docker build --no-cache -t prod_app:${GIT_COMMIT} .
            }         
        }
    }
}	 	
