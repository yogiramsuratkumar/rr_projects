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
        }
   stages{
    stage('Build code'){
     steps{
	  sh 'mvn -s settings.xml -DskipTests install'
     }
   }
   stage('Check Style analysis'){
       steps{
        sh "mvn -s settings.xml checkstyle:checkstyle"
		}
   }
   stage("sonarqube report"){
     environment{
      scannerHome= tool "${SONAR_SCANNER}"
     }
       steps{
         withSonarQubeEnv("${SONAR_SERVER}") {
         sh '''${scannerHome}/bin/sonar-scanner
         -Dsonar.projectKey=FirstProject \
         -Dsonar.projectName=FirstProject \
         -Dsonar.projectVersion= 1.0 \
         -Dsonar.sources= /src \
         -Dsonar.java.checkstyle.reportPaths=/target/checkstyle-result.xml \
         '''
          }
      }
    }

	stage("sonatr quality-gate check") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true
                }
            }

         }
     }
}