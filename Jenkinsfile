pipeline{
  enviroment{
    registry = "samrika26/python_app"
    registeryCredential = 'dockerhub_id'
    dockerImage = ''
  }
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
                    docker.withRegistery( '', registryCredential ){
                                  dockerImage.push()
                      
                                   }
                             }
              }



  }
}
}
