#choose linux ami/rhel
sudo yum update –y
sudo yum install wget -y
sudo yum install java-1.8* -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo service jenkins start
#connect to jenkins url at 0.0.0.0:8080
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
