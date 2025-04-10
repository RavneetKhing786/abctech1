FROM tomcat:latest

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat webapps directory
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080
#EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]