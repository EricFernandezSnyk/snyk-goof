pipeline {
  agent {
    docker {
      image 'node:latest'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install snyk-to-html -g'
        snykSecurity(snykTokenId: '6d4c6dd5-8944-4fe8-9b0e-c988dbc8915b', additionalArguments: '--json | snyk-to-html -o result.html')
      }
    }

  }
}