pipeline{
   agent any
   stages{
    stage('Fetch code'){
     steps{
	 git branch: 'rr_projects', url:'https://github.com/yogiramsuratkumar/rr_projects.git'
	     credentialsId :"gitsec"
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
