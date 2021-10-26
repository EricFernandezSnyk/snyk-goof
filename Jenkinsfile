pipeline {
  agent {
    docker {
      image 'node:latest'
    }

  }
  stages {
    stage('Build') {
      steps {
        snykSecurity(snykTokenId: '6d4c6dd5-8944-4fe8-9b0e-c988dbc8915b', snykInstallation: 'Snyk-test')
      }
    }

  }
}