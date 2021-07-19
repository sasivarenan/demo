pipeline {
    agent any 
	environment {
       SECRET_VALUE = credentials('s3-bucketaccess')
    }
    stages {
		stage('Code Checkout'){
			steps{
				checkout([
					$class: 'GitSCM',
					branches: [[name: '*/main']],
					userRemoteConfigs: [[url: 'https://github.com/sasivarenan/demo.git']]
					])
			}}
        stage('Deploy') { 
            steps {
                sh """
				chmod +x scripts/copy.sh
				sh scripts/copy.sh
				"""
            }
        }
    }
}