//Declarative//
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'building ..'
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
//script//
node {
    stage('build') {
     echo 'building....'   
    }
    stage('test') {
        echo 'building....'
    }
    stage('deploy') {
        echo 'deploying'
    }
}

node('master') {
    	stage('SCM Checkout'){
        checkout scm
    }
	stage('Compile stage') {
        sh "mvn clean install -DskipTests=true" 
    }
	
	stage('Build Docker Image') {
	sh "docker build -t springbootdemo ."
    }

	stage('Run container') {
	sh 'docker ps -f name=springbootdemo -q | xargs --no-run-if-empty docker container stop'
	sh 'docker container ls -a -fname=springbootdemo -q | xargs -r docker container rm'
        sh "docker run -d   -p 0.0.0.0:8089:8089 --name springbootdemo springbootdemo:latest"
        echo "docker run successful"
    }
 }
 
 
