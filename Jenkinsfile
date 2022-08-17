node {

   stage('SCM Checkout'){
    checkout scm
   }

  stage("Init") {
    sh "terraform init"
  }
  
  stage("EKS execution") {
	  
    if ( "${OPTION}" == 'create-stack') {
            catchError {
    sh "terraform apply -auto-approve"
	    }
    echo currentBuild.result
    }
      
    if ( "${OPTION}" == 'delete-stack') {
            catchError {
    sh "terraform destroy -auto-approve"
                       }
    echo currentBuild.result
    }
	  
    if ( "${OPTION}" == 'plan-stack') {
            catchError {
     sh "terraform_12 plan"
                       }
    echo currentBuild.result
    }
  }	
     
}
