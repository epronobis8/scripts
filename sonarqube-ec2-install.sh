sudo yum update -y
sudo yum install mysql jav1.8* -y
sudo yum install wget unzip -y
sudo su -
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.4.0.35506.zip
unzip sonarqube-8.4.0.35506.zip 
mv sonarqube-8.4.0.35506 sonarqube
cd sonarqube/
useradd sonaradmin
passwd sonaradmin
cd ..
ls -ltr
chown -R sonaradmin:sonaradmin sonarqube

#source: https://www.youtube.com/watch?v=wxYRZ3K7Jr0&list=WL&index=11&t=0s
