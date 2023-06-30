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
        BRANCH= "pipeline"
    }

    stages {

        stage('Cleanup workspace') {
            steps {
                cleanWS()
                echo "Cleaned workspace for ${APP_NAME}"
            }
        }
        
        stage('Checkout code') {
            steps {
                git(
                    url: "https://github.com/sanjeetcalgary/java-maven-webapp.git",
                    branch: "${env.BRANCH}"
                )
            }
        }

        stage('Code build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Publish test result') {
            steps {

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