#!/bin/bash -x

#constants
namePattern="^[A-Z][a-z]{3,}$"

#variables
firstName=""

#welcome message
echo "Welcome to user registration validation ! "

#read name from user
read -p "Enter first name : " firstName

if [[ $firstName =~ $namePattern ]]
then
	echo "Valid Name"
else
	echo "Not valid name"
fi
