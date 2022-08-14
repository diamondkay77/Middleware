#!/bin/bash

echo "welcome to our shop"
echo "do you want car wash? (yes/no) "
read XY
if [ $XY != yes -a $XY != no ]
then
echo "Enter a valid answer"
exit 100
fi
if [ ${XY} = yes ]
then
echo "Please drive around the corner and enter the dark room, dont foget to put your car in neutral"
sleep 3
echo "Your car is ready to be washed"
sleep 3
echo "please wait patiently"
echo "Can we serve you some drinks?"
read DR
else
echo "Please pump your gas and make payment"
fi
