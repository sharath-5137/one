FROM tomcat:9.0
COPY server.xml /usr/local/tomcat/conf
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/
