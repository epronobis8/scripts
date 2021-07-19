sudo wget https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz
tar xfvz openjdk-11_linux-x64_bin.tar.gz 
mv jdk-11 /usr/lib/jvm
java -version
export JAVA_HOME=/usr/lib/jvm/jdk11
echo $JAVA_HOME

