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
        sh '''docker ps -a --filter "name=vishnyakov" -q | xargs -r docker rm -f || true
docker run -d --name vishnyakov devops
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