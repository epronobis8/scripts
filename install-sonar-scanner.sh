#get sonar-scanner, unzip, and move to /opt/sonar-scanner
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.4.0.2170-linux.zip
unzip sonar-scanner-cli-4.4.0.2170-linux.zip 
mv sonar-scanner-cli-4.4.0.2170 sonar-scanner
#point the install of the scanner in jenkins/ui configuration
