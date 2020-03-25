#!/bin/bash -x

#constants
NAMEPATTERN="^[A-Z][a-z]{3,}$"
EMAILPATTERN="^[a-zA-Z0-9._a-zA-Z0-9]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[A-Za-z]{2,4}$"

#variables
firstName=""
lastName=""
email=""

#welcome message
echo "Welcome to user registration validation ! "

#read first name from user
read -p "Enter first name : " firstName
if [[ $firstName =~ $NAMEPATTERN ]]
then
	echo "Valid Name"
else
	echo "Not valid name"
fi

#read last name
read -p "Enter Last name : " lastName
if [[ $lastName =~ $NAMEPATTERN ]]
then
	echo "Valid Last name"
else
	echo "Not valid Last name"
fi

#read email
read -p "Enter email : " email
if [[ $email =~ $EMAILPATTERN ]]
then
	echo "Valid email"
else
	echo "Not valid email"
fi
