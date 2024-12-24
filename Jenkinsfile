pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker stop vishnyakov
docker rm vishnyakov
docker build -t devops .'''
      }
    }

    stage('Test') {
      steps {
        sh '''docker run -d --name vishnyakov devops
docker exec vishnyakov npm test
docker rm -f vishnyakov'''
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 3000:3000 --name vishnyakov devops'
      }
    }

  }
}