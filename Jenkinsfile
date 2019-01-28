pipeline
{
    agent any
    
        stages
        {
            stage('Validating Project')
            {
                steps
                {
                    sh 'sudo mvn clean validate'
                }
            }
            stage('Compiling Project')
            {
                steps
                {
                    sh 'sudo mvn compile'
                }
            }
            stage('Testing in Progress')
            {
                steps
                {
                    sh 'sudo mvn test'
                }
            }
            stage('Packaging Project')
            {
                steps
                {
                    sh 'sudo mvn package'
                }
            }
            
            stage('Deploying Docker Image using docker-compose')
            {
                steps
                {
                    sh 'docker-compose up -d'
                    sh 'echo "..................Deployment Successfull.............."'
                }
            }
        }
}
