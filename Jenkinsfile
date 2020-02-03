pipeline {    
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('git clone'){
            steps{
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '0d926019-b1c1-4288-b928-e2373cbb9b6c', url: 'git@github.com:norwegianblackmetal/scientific.git']]])
            }
        }
        stage('mvn clean') { 
            steps {
                sh 'mvn clean' 
            }
        }
        stage('mvn compile') { 
            steps {
                sh 'mvn compile' 
            }
        }
        stage('mvn package') { 
            steps {
                sh 'mvn package' 
            }
        }
        stage('run!'){
            steps{
                sh 'java -jar target/scientific-1.0-SNAPSHOT.jar'
            }
        }
    }
}
