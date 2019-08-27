env=$1

if [ $env="QA" ]
then
	sshpass -p manoj scp target/month.war manoj@172.017.0.2 /home/manoj/Devops/tomcat/webapps
	sshpass -p manoj manoj@172.17.0.2 JAVA_HOME="/home/manoj/Devops/jdk_1.8.0" "/home/manoj/Devops/tomcat/bin/startup.sh"
elif [ $env="SIT" ]
then
	        sshpass -p manoj scp target/month.war manoj@172.017.0.3 /home/manoj/Devops/tomcat/webapps
        sshpass -p manoj manoj@172.17.0.3 JAVA_HOME="/home/manoj/Devops/jdk_1.8.0" "/home/manoj/Devops/tomcat/bin/startup.sh"
fi
