pipeline{
   agent any
   stages{
    stage('Fetch code'){
     steps{
         credentialsId:"a960f2f4-9268-4ca1-bc3b-efdb71bf9288"
	 git branch: 'rr_projects', url:'https://github.com/yogiramsuratkumar/rr_projects.git'  
     }
   }
    stage('Build code'){
     steps{
	  sh 'mvn clean install -DskipTests'
     }
	 post{
	  success{
	   echo "=======build completed======"
	  }
	 }
   }  
}
}
