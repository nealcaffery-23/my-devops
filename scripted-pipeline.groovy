node('master-node') {
    
    def Git_URL = "https://mygit-repo.git"
    def Git_Creds = "my-git-creds"
    try {
        stage('scm checkout') {
            if (env.BRANCH_NAME == 'main' | env.BRANCH_NAME == 'develop') {
                echo "git scm checkout for branch ${env.BRANCH_NAME}"
                git branch: "${env.BRANCH_NAME}",
                  url: Git_URL,
                  credentialsId: Git_Creds
            } else {
                echo "Skipping scm checkout"
            }
        }
        stage('build stage') {
            echo "Build stage"
        }
        stage('deploy stage') {
            echo "deploy stage"
        }
    }
    catch (Exception e) {
        currentBuild.result = 'FAILURE'
    }
    if (currentBuild.result == 'SUCCESS') {
        echo "The job is sucess"
    } else {
        echo "The job has failed"
    }
}