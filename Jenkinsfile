pipeline
{
    agent any
    
        stages
        {
            stage('Validating Project')
            {
                steps
                {
                    sh 'mvn clean validate'
                }
            }
            stage('Compiling Project')
            {
                steps
                {
                    sh 'mvn compile'
                }
            }
            stage('Testing in Progress')
            {
                steps
                {
                    sh 'mvn test'
                }
            }
            stage('Packaging Project')
            {
                steps
                {
                    sh 'sudo mvn package'
                }
            }
            
            stage('Deploying Docker Image using docker-stack ')
            {
                steps
                {
                    sh 'docker stack deploy -c docker-compose app'
                    sh 'echo "..................Deployment Successfull.............."'
                }
            }
        }
}
