FROM amazonlinux

# Install Java & wget
RUN yum install -y java-17-amazon-corretto wget

# Create Jenkins directory
RUN mkdir -p /opt/jenkins

# Download Jenkins LTS WAR file
RUN wget https://get.jenkins.io/war-stable/latest/jenkins.war -O /opt/jenkins/jenkins.war

# Expose port
EXPOSE 8080

# Run Jenkins
CMD ["java", "-jar", "/opt/jenkins/jenkins.war", "--httpPort=8080"]

# just comment
