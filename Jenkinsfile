pipeline{
    agent {
        node{
            label 'kworkerthree'
        }
    }

    tools {
        maven 'slave-mvn'
    }

    environment {
        DOCKER_USER = credentials('dockerid')
        DOCKER_PASSWORD = credentials('dockerpwd')
    }

    stages {
        
        stage('Build jar file') {
            steps {
                echo "Building jar"
                sh 'mvn clean package'
            }
        } 

        stage('Build docker image') {
            steps {
                echo "Building docker image"
                sh "docker build -t sanjeetkr/java-app:v2.1 ."
                sh "docker login -u $DOCKER_USER -p $DOCKER_PASSWORD"
                sh "docker push sanjeetkr/java-app:v2.1"
            }
        }

        stage('Deploy the image') {
            steps {
                echo "Deployment phase"
            }
        }


    }
    post{
        always{
            echo "Publishing test result"
            junit "**/target/surefire-reports/*.xml"
        }
    } 
    
}