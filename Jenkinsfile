pipeline{
    agent {
        node{
            label 'kworkerthree'
        }
    }

    tools {
        maven 'slave-mvn'
    }

    stages {

        stage('cleanup'){
            steps{
                echo '*********cleanup before build**********'
            }
        }

        stage('package'){
            steps{
                echo '*********package goal before build**********'
            }
        }

        stage('test'){
            steps{
                echo '*********Docker image to nexus**********'
            }
        }

        stage('deploy'){
            steps{
                echo '*********Upload the snapshot to nexus**********'
            }
        }

        stages('Build image'){
            step{
                echo '*********Docker image**********'
            }
        }

        stage('upload image'){
            steps{
                echo '*********Docker image to nexus**********'
            }
        }
    }
}