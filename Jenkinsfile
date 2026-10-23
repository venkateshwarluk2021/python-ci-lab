pipeline {
	agent any 
	
	stages {
		stage('Checkout') {
			steps {
				cehckout scm
				}
			}
		stage('Test') {
			steps {
				sh 'python3 -m unittest -v test_app.py'
				}
			}
			
		stage('Build docker image') {
			steps {
				sh 'docker build -t python-ci-lab:latest .'
				}
			}
			
		stage('Deploy locally') {
			steps {
				sh '''
					docker rm -f python-ci-lab-app || true
					docker run -d --name python-ci-lab-app \
					python-ci-lab:latest
				'''
				}
			}
		}
	}