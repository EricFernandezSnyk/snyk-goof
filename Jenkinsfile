pipeline {
  agent {
    docker {
      image 'node:latest'
    }

  }
  stages {
    stage('Build') {
      steps {
        snykSecurity(snykTokenId: 'snyk-api', snykInstallation: 'Snyk-test')
      }
    }

  }
}