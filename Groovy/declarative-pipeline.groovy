pipeline {
    agent {
      label "master-node"
    }
    environment {
        Git_URL: 'https://github.myrepo.git'
        Git_creds: 'my-git-creds'
    }

    stages {
        stage('scm checkout') {
            when {
                anyOf {
                    branch 'main'
                    branch 'develop'
                }
            }
            steps {
                    git branch: "${env.BRANCH-NAME}",
                      url: "${Git_URL}",
                      credentialsId: "${git_creds}"
            }

        }
        stage('build stage') {
            echo "Build stage"
        }
        stage('deploy stage') {
            echo 'deploy stage'
        }
    }
    post {
        always {
            echo "This runs regardless of success or failue"
        }
        success {
            echo "The job is success"
        }
        failue {
            echo "The job has failed"
        }
    }
}