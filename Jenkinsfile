pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t devops .'
      }
    }

    stage('Test') {
      steps {
        sh '''docker inspect -f \'{{.State.Running}}\' vishnyakov || docker rm -f vishnyakov
docker run -d --name vishnyakov devops
docker exec vishnyakov npm test'''
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 3000:3000 --name vishnyakov devops'
      }
    }

  }
}