pipeline {
    agent any 
	environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIAT54UVAUVTQIS3P54')
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