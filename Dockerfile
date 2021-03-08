FROM tomcat:7 
FROM tomcat:8.0-alpine
LABEL maintainer="tony001983@gmail.com"
ADD calendar.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
