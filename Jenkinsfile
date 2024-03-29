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
	   NEXUS_PWD = credentials("nexus_pwd")
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
	 stage("deploy to stage by ansible"){
        steps{
		    ansiblePlaybook(credentialsId: 'stage_server_login',inventory: 'ansible/stage.inventory',
                  		 playbook:  'ansible/site.yml',colorized: true,disableHostKeyChecking: true,
						 extraVars: [
						    USER:"admin",
						    PASS:'${NEXUS_PWD}',
						    nexusip:"172.31.6.60",
						    reponame:"Star-Blog-release",
						    groupid:"dev",
						    artifactid:"first_app",
							build_no:"${env.BUILD_ID}",
							time:"${env.BUILD_TIMESTAMP}",
							star_blog_version:"first_app-${env.BUILD_ID}-${env.BUILD_TIMESTAMP}.war"
                                ])
		               }
		         }
            }
      }