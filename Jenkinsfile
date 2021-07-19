pipeline {
    agent any 
	environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIAT54UVAUVWGLEXSH3')
        AWS_SECRET_ACCESS_KEY = credentials('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')
    }
    stages {
		stage('Code Checkout'){
			steps{
				checkout([
					$class: 'GitSCM',
					branches: [[name: '*/main']],
					userRemoteConfigs: [[url: https://github.com/sasivarenan/demo.git]]
					])
			}}
        stage('Build') { 
            steps {
                chmod +x scripts/copy.sh
				sh scripts/copy.sh
            }
        }
    }
}