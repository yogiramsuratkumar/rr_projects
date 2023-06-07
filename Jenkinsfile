pipeline{
   agent any
    environment{
       NEXUS_VERSION= "3.54.1-01"
       NEXUS_PROTOCOL= "http"
       NEXUS_URL=http:"3.108.63.190:8081"
       NEXUS_REPOSITORY="Star-Blog-release"
       NEXUS_REPO_ID="Star-Blog-release"
       NEXUS_CREDENTIALS_ID="nexus_login"
        }
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
