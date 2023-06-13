pipeline{
   agent any
    environment{
       NEXUS_VERSION= "3.54.1-01"
       NEXUS_PROTOCOL= "http"
       NEXUS_URL="172.31.6.60:8081"
       NEXUS_REPOSITORY="Star-Blog-release"
       NEXUS_REPO_ID="Star-Blog-release"
       NEXUS_LOGIN="nexus_login"
       SNAP_REPO="star-blog-snapshot"
       RELEASE_REPO="Star-Blog-release"
       CENTRAL_REPO="Star-Blog-maven-central"
       NEXUS_GRP_REPO="star-blog-maven-group"
       SONAR_SERVER="sonarqube"
       SONAR_SCANNER="sonarscanner"
	   registryCred="ecr:ap-south-1:aws_creds"
	   appRegistry="628858077541.dkr.ecr.ap-south-1.amazonaws.com/firstapp_image"
	   firstAppRegistry="https://628858077541.dkr.ecr.ap-south-1.amazonaws.com"
        }

		stage("build docker images"){
		 steps{
		    script{
			dockerimage=docker.build( appRegistry+ ":$BUILD_NUMBER","./Docker-files/app/")
			}
		 }
		}
       stage("push app image"){
	   steps{
	        script{
			  docker.withRegistry(firstAppRegistry,registryCred){
			    docker.push("BUILD_NUMBER")
				docker.push("latest")
			  }
			}
	      }
	   }
     }
  }