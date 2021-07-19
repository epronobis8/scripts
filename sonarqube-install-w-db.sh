sudo yum install update
sudo yum install unzip -y
sudo yum install wget -y
curl -O https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
tar zxvf openjdk-11.0.1_linux-x64_bin.tar.gz
sudo mv jdk-11.0.1 /usr/local/
yum install postgresql-server -y
postgresql-setup initdb
systemctl enable postgresql.service
systemctl start postgresql.service
sudo su - postgres
psql
CREATE USER sonarqube WITH PASSWORD 'Sonarway123';
CREATE DATABASE sonarqube OWNER sonarqube;
GRANT ALL PRIVILEGES ON DATABASE sonarqube TO sonarqube;
\q
exit
cd /
mkdir /downloads/sonarqube
cd /downloads/sonarqube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.1.zip
unzip sonarqube-7.9.1.zip
mv sonarqube-7.9.1 /opt/sonarqube
sudo groupadd sonarqube
sudo useradd -g sonarqube sonarqube
chown -R sonarqube:sonarqube /opt/sonarqube
vi /opt/sonarqube/bin/linux-x86-64/sonar.sh
RUN_AS_USER=sonarqube
vi /opt/sonarqube/conf/sonar.properties
sonar.jdbc.username=sonarqube
sonar.jdbc.password=Sonarway123
sonar.jdbc.url=jdbc:postgresql://localhost/sonarqube
sonar.web.javaAdditionalOpts=-server
sonar.web.host=0.0.0.0

#edits limits in the next to files
vi /etc/security/limits.d/99-sonarqube.conf
sonarqube   -   nofile   65536
sonarqube   -   nproc    4096
#didn't do this on the test run box
vi /etc/sysctl.conf
vm.max_map_count=262144
fs.file-max=65536

cd /usr/local/jdk-11.0.1/
chown -R sonarqube:sonarqube .
cd /opt/sonarqube/conf/
sudo vi wrapper.conf 
#change line 2 and 4
wrapper.java.command=/usr/local/jdk-11.0.1/bin/java
#wrapper.java.command=java

/opt/sonarqube/bin/linux-x86-64/sonar.sh start
/opt/sonarqube/bin/linux-x86-64/sonar.sh status
tail -f /opt/sonarqube/logs/sonar.log
