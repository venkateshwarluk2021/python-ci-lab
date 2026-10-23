pipeline {
	agent any
	
	stages {
		stage('Checkout') {
			steps {
				echo 'source code is available in the workspace'
				}
			}
			
		stage('Python Version') {
			steps {
				sh 'python3 --version'
				}
			}
			
		stage('Run Unit Tests') {
			steps {
				sh 'python3 -m unittest -v test_app.py'
				}
			}
		}

	post {
		success {
			echo 'CI pipeline completed successfullly'
			}
		failure {
			echo 'CI pipeline failed. check the console output'
			}
		}
	}
		

