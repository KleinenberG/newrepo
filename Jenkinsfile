pipeline {
    agent { label'agent1' }
    
    stages {
        stage ('git') {
            steps {
                sh 'hostname'
            }         
        }
#        stage ('build') {
#            steps {
#                sh 'mvn package'
#            }
#        }
#        stage ('deploy') {
#            steps {
#                sshagent (['7116d77f-ac60-48df-9eab-d02c232db7fa']) {
#                    sh 'ls -la'
#                    sh 'scp -r target/*.war root@35.228.148.208:/var/lib/tomcat8/webapps/'    
#                }
#            }
 #       }
    }
#    post {
#	always {
#	    archiveArtifacts artifacts: 'target/*.war', fingerprint: true
#	}
#    }	
}
