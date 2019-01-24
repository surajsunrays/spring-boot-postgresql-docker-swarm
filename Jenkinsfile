pipeline
{
    agent any
    {
        stages
        {
            stage("Validating Project")
            {
                step
                {
                    sh 'mvn clean validate'
                }
            }
            stage("Compiling Project")
            {
                step
                {
                    sh 'mvn compile'
                }
            }
            stage("Testing in Progress")
            {
                step
                {
                    sh 'mvn test'
                }
            }
            stage("Packaging Project")
            {
                step
                {
                    sh 'mvn package'
                }
            }
            //Creating Docker Image Here
            stage("Creating Docker Image")
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
            stage("Deploying Docker Image to Docker Swarm")
            {
                step
                {
                    sh 'docker stack deploy --compose-file docker-compose app'
                }
            }
        }
    }
}