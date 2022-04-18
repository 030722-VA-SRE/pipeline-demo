pipeline{
    agent any
    stages{
        stage('Code quality analysis'){
            steps{
                withSonarQubeEnv(credentialsId: 'sonar-cloud', installationName: 'sonar'){
                    sh 'mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=030722-VA-SRE_pipeline-demo'
                }
            }
        }
        stage("Maven clean package"){
            steps{
                sh 'mvn clean package -Dmaven.test.skip'
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