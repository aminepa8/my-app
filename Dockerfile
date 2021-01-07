FROM tomcat:8
RUN sed -i 's/port="8080"/port="8081"/' /usr/local/tomcat/conf/server.xml
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
EXPOSE 8081
CMD [“catalina.sh”, “run”]
# Added to test webhook
