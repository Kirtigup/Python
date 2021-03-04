pipeline{
  environment{
    registry = "samrika26/python_app9"
   registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
  agent any
  stages{

              
              stage('Docker-build'){
                steps {
                  script {
                          dockerImage = docker.build registry + ":$BUILD_NUMBER"
                         }
                     }
              }
             
              stage('Docker-push'){
                steps{
                  script{
                    docker.withRegistry( '', registryCredential ){
                                  dockerImage.push()
                      
                                   }
                             }
              }



  }
}
}
