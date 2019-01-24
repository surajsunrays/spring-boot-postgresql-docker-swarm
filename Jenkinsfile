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
                    sh 'mvn package'
                }
            }
            //Creating Docker Image Here
            stage('Creating Docker Image')
            {
                agent
                {
                    dockerfile
                    {
                        filename 'Dockerfile'
                        label 'demo_mysql'
                    }
                }
            }
            stage('Deploying Docker Image to Docker Swarm')
            {
                steps
                {
                    sh 'docker stack deploy --compose-file docker-compose app'
                }
            }
        }
    
}
