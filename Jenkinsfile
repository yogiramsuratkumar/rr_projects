pipeline{
   agent any
    environment{
       NEXUS_VERSION= "3.54.1-01"
       NEXUS_PROTOCOL= "http"
       NEXUS_URL="3.111.31.168:8081"
       NEXUS_REPOSITORY="Star-Blog-release"
       NEXUS_REPO_ID="Star-Blog-release"
       NEXUS_CREDENTIALS_ID="nexus_login"
       SNAP_REPO="star-blog-snapshot"
       RELEASE_REPO="Star-Blog-release"
       CENTRAL_REPO="Star-Blog-maven-central"
       NEXUS_GRP_REPO="star-blog-maven-group"
        }
   stages{
    stage('Build code'){
     steps{
	  sh 'mvn -s settings.xml -DskipTests install'
     }
	 post{
	  success{
	   echo "=======build completed test======"
	  }
	 }
   }  
}
}
