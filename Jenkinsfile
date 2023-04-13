pipeline{
    agent {label 'docker'}
    environment {
		DOCKER_LOGIN_CREDENTIALS=credentials('Rajashekar85-Dockerhub')
	}
    stages {
        stage('checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/Rajashekar85/jacoco.git'
            }
        }

        stage('build') {
            steps {
                sh 'mvn clean package'
               }
        }
        stage('jacoco report') {
            steps {
                jacoco()
            }
        }
        stage('SonarQube Analysis Stage') {
            steps{
                withSonarQubeEnv(sonarqube) {
                 sh "mvn clean verify sonar:sonar -Dsonar.projectKey=palindrome-sonar"
                }
            }
        }
    }
}
