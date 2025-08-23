pipeline {
    agent none   // No global agent, we'll specify per stage

    stages {
        stage('Run on Linux') {
            agent { label 'linux' }   // Ensure your Jenkins node has label 'linux'
            steps {
                script {
                    // Run your script with multiple inputs
                    sh '''
                        echo "Shridhar" | ./questionnaries.sh
                        echo -e "Shridhar\nBengaluru\nFreecodecamp" | ./questionnaries.sh
                        echo -e "TestUser\nMumbai\nGithub" | ./questionnaries.sh
                    '''
                }
            }
        }

        stage('Run on Windows') {
            agent { label 'windows' }   // Ensure your Jenkins node has label 'windows'
            steps {
                script {
                    // For Windows use bat instead of sh
                    bat '''
                        echo Shridhar | questionnaries.sh
                        echo Shridhar && echo Bengaluru && echo Freecodecamp | questionnaries.sh
                        echo TestUser && echo Delhi && echo Jenkins | questionnaries.sh
                    '''
                }
            }
        }
    }
}
