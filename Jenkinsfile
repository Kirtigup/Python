pipeline{
  environment{
    IBM_CLOUD_REGION = 'eu-de'
    REGISTRY_HOSTNAME= 'de.icr.io'
    IKS_CLUSTER= 'c0sf25ud0fesivtjm07g'
    registry = "samrika26/python_app10"
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
             
              stage('Authenticate with IBM cloud CLI'){
                steps {
                  sh '''
                          ibmcloud login --apikey ${IBM_API_KEY} -r "${IBM_CLOUD_REGION}" -g Default
                          ibmcloud ks cluster config --cluster ${IKS_CLUSTER}
                          '''
                        
                     }
              }
             stage('Deploy to IKS'){
                steps {
                  sh '''
                          ibmcloud ks cluster config --cluster ${IKS_CLUSTER}
                          kubectl config current-context
                          export BUILD_NUMBER=$BUILD_NUMBER
                          kubectl apply -f deployment.yml
                          kubectl apply -f service.yml
                          kubectl apply -f ingress.yml
                          '''
                        
                     }
              }
  }
}
