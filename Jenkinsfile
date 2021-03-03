pipeline{
  environment{
    registry = "samrika26/python_app"
   credentialsId = 'dockerhub_id'
    dockerImage = ''
  }
  agent any
  stages{

              
              stage('Docker-build'){
                steps {
                  script {
                          dockerImage = docker.build registry
                         }
                     }
              }
             
              stage('Docker-push'){
                steps{
                  script{
                    docker.withRegistery( '', credentialsId ){
                                  dockerImage.push()
                      
                                   }
                             }
              }



  }
}
}
