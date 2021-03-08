FROM tomcat:8-jre8 
LABEL maintainer="tony001983@gmail.com"
COPY calendar.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
