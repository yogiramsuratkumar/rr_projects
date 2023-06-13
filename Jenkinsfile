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
       REGISTRY_CRED="ecr:ap-south-1:aws_creds"
       APP_REGISTRY="628858077541.dkr.ecr.ap-south-1.amazonaws.com/firstapp_image"
       FIRSTAPP_REGISTRY="https://628858077541.dkr.ecr.ap-south-1.amazonaws.com"
        }
   stages{
     stage("Build code"){
       steps{
	   sh "mvn -s settings.xml -DskipTests install"
     }
   }
     stage("Check Style analysis"){
	   steps{
		sh "mvn -s settings.xml checkstyle:checkstyle"
		}
        }
     stage("sonarqube report"){
		 environment{
		  scannerHome= tool "${SONAR_SCANNER}"
		  project_Name = "FirstProject"
		 }
		   steps{
			 withSonarQubeEnv(installationName: "sonarqube") {
			 sh """${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=$project_Name \
			 -Dsonar.java.checkstyle.reportPaths=/target/checkstyle-result.xml"""
			  }
		  }
        }
	 stage("sonar quality-gate check") {
		steps {
			timeout(time: 1, unit: "HOURS") {
				waitForQualityGate abortPipeline: true
			}
		}
         }

     stage("upload artifact to nexus"){
	   steps{
			nexusArtifactUploader(
			nexusVersion: "nexus3",
			protocol: "http",
			nexusUrl: "${NEXUS_URL}",
			groupId: "dev",
			version: "${env.BUILD_ID}-${env.BUILD_TIMESTAMP}",
			repository: "${RELEASE_REPO}",
			credentialsId: "${NEXUS_LOGIN}",
			artifacts: [
				[artifactId: "first_app",
				 classifier: "",
				 file: "target/FirstProject.war",
				 type: "war"]
				])
				}
			}
	 stage("build docker images"){
		steps{
			script{
			  dockerImage=docker.build( APP_REGISTRY + ":$BUILD_NUMBER","./Docker-files/app/")
			}
		  }
		}
	 stage("push app image"){
		steps{
			script{
			  docker.withRegistry(FIRSTAPP_REGISTRY,REGISTRY_CRED){
				dockerImage.push("$BUILD_NUMBER")
				dockerImage.push("latest")
			  }
			}
        }
     }
   }
 }