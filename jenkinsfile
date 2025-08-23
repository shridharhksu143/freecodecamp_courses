node {
    stage('Checkout') {
        // Pull code from master branch of your GitHub repo
        git branch: 'master', url: 'https://github.com/your-username/your-repo.git'
    }

    stage('Run Script') {
        // Run your shell script with inputs
        sh '''
            chmod +x questionnaries.sh
            echo -e "Shridhar\nfreecodecamp" | ./questionnaries.sh
        '''
    }
}
