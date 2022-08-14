#!/bin/bash

echo "Which group do you belong to?"       
read GRP
grep -q ${GRP} /etc/group
if [ ${?} -eq 0 ]
then
echo "Group ${GRP} exist on this system"   
else
echo "${GRP} does not exist on this system"
echo "Kindly enter a valid group"
echo "thank you!!!"
fi
echo "What is your username?"
read US
grep -q ${US} /etc/passwd
if [ ${?} -eq 0 ]
then
echo "${US} exists on this system"
else
echo "${US} does not exist on this system"
echo "Kindly enter a valid user name"
exit 0
fi
