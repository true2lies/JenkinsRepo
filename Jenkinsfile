pipeline {
  agent any

  stages {
    stage('Welcome') { 
            steps {
                echo 'Hi , You are inside the pipeline'
            }
        }
    stage('Build') {
            steps {
                sh 'docker build -t my-reactapp-image .'
            }
        }
    stage('Run'){
            steps{
                sh 'docker run --name my-reactapp-container -d -p 3000:8000 my-reactapp-image'
            }
        }
    }
}
