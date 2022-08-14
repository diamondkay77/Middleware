#!/bin/bash

# AUTHOR : DIAMOND KAY
# DATE : 13TH AUGUST, 2022.
# DESCRIPTION : This script is to help solve the problem of having to manually go through the process of installing the jenkins package. 

 #Step 1: Install OpenJDK 8 package
sudo yum install java-1.8.0-openjdk-devel -y
if [ $? -eq 0 ]
then
echo "jenkins repo successfully installed"
else
echo "jenkins repo installation failed, please check and try again later. thank you"
exit 99
fi
#Step 2: Install Jenkins repository
sudo curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sleep 3
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.keysleep 3
cat /etc/yum.repos.d/jenkins.repo
sleep 3
#Step 3: Install stable Jenkins on CentOS 7
sudo yum install jenkins
#Step 4: Start the Jenkins service and auto-start on boot
sudo systemctl start jenkins
sleep 3

sudo systemctl enable jenkin
sleep 3
#Step 5: Verify the status of Jenkins
systemctl status jenkins
sleep 3
yum install firewalld
systemctl start firewalld
sleep 3
systemctl enable firewalld
sleep
systemctl status firewalld
#Step 6: Configure the firewall and allow 8080 port
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp   
sleep 3
sudo firewall-cmd --reload
sleep 3
#Step 7: Configure Jenkins on CentOS or RHEL
#To configure Jenkins you need to access it on any web browser with a domain/host IP address.
#
#http://your_ip_or_domain:8080

#7.1: Unlock Jenkins
#When you access Jenkins for the first time (after installation) it will ask you the password. And to know the password run the below command, and you will see a 32-character alphanumeric password. 
#
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "Copy the password and paste it into the Jenkins Administrator section."

exit
fi
