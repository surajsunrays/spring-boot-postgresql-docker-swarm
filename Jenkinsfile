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
            
            stage('Deploying Docker Image using docker-stack ')
            {
                steps
                {
                    sh 'docker stack deploy -c docker-compose.yml app'
                    sh 'echo "..................Deployment Successfull.............."'
                }
            }
        }
    post{
        always
        {
            NotifyStarted();
        }
}
}
    def NotifyStarted()
{
    // send to email
  emailext (
      subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
      body: """<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
        <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>""",
      recipientProviders: [['suraj.bodade@zemosolabs.com']]
    )
}
