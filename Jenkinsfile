pipeline{
   agent any
   stages{
    stage('Fetch code'){
     steps{
	 git url:'https://github.com/yogiramsuratkumar/rr_projects.git', branch: 'rr_projects',
	 credentialsId :"gitsec"
     }
   }
    stage('Build code'){
     steps{
	  sh 'mvn clean install -DskipTests'
     }
	 post{
	  success{
	   echo "=======build completed test======"
	  }
	 }
   }  
}
}
