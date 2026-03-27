FROM amazonlinux:2

# Install Java & wget
RUN yum update -y && \
    yum install -y java-17-amazon-corretto wget && \
    yum clean all

# Create Jenkins directory
WORKDIR /opt/jenkins

# Download Jenkins LTS WAR file
RUN wget https://get.jenkins.io/war-stable/latest/jenkins.war

# Expose port
EXPOSE 8080

# Run Jenkins
CMD ["java", "-jar", "jenkins.war", "--httpPort=8080"]
