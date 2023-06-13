FROM  openjdk:8  AS BUILD_IMAGE
RUN  apt update  && apt install maven -y
RUN  git clone -b cd_delivery https://github.com/yogiramsuratkumar/rr_projects.git
RUN  cd rr_projects && mvn install

FROM tomcat
RUN  rm -rf /usr/local/tomcat/webapps/*
COPY  --from=BUILD_IMAGE  rr_projects/taget/FirstProject.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh","run"]