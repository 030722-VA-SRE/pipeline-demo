pipeline{
    agent any
    stages{
        stage('Code quality analysis'){
            steps{
                withSonarQubeEnv(credentialsId: 'sonar-token', installationName: 'sonar'){
                    sh 'mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar'
                }
            }
        }
        stage("Maven clean package"){
            steps{
                sh 'mvn clean package'
            }
        }
    }
    // post{
        // always{
        //     echo "========always========"
        // }
        // success{
        //     echo "========pipeline executed successfully ========"
        // }
        // failure{
        //     echo "========pipeline execution failed========"
        // }
    // }
}