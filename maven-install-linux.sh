wget https://downloads.apache.org/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz
tar xzvf apache-maven-3.8.1-bin.tar.gz
mv apache-maven-3.8.1 /opt/ 
export PATH="/opt/apache-maven-3.8.1/bin:$PATH"
echo $PATH
M2_HOME="/opt/apache-maven-3.8.1"
echo $M2_HOME
mvn -v


#https://gist.github.com/anacunha/8400046ed181c4dead9e577fb061b2e7 - helpful link
