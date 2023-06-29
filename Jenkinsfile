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
            step{
                echo '*********package goal before build**********'
            }
        }

        stage('test'){
            step{
                echo '*********Docker image to nexus**********'
            }
        }

        stage('deploy'){
            step{
                echo '*********Upload the snapshot to nexus**********'
            }
        }

        stage('Build image'){
            step{
                echo '*********Docker image**********'
            }
        }

        stage('upload image'){
            step{
                echo '*********Docker image to nexus**********'
            }
        }
    }
}