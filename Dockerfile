# Use official Tomcat image with JDK
FROM tomcat:9.0

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your JSP file into ROOT folder
COPY index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
