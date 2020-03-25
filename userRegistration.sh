#!/bin/bash -x

#constants
namePattern="^[A-Z][a-z]{3,}$"

#variables
firstName=""
lastName=""

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

read -p "Enter Last name : " lastName

if [[ $lastName =~ $namePattern ]]
then
	echo "Valid Last name"
else
	echo "Not valid Last name"
fi
