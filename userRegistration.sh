#!/bin/bash -x

#constants
NAMEPATTERN="^[A-Z][a-z]{3,}$"
EMAILPATTERN="^[a-zA-Z0-9._a-zA-Z0-9]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[A-Za-z]{2,4}$"
MOBILEPATTERN="^[0-9]{2} [7-9]{1}[0-9]{9}$"
PASSWORDPATTERN="^[A-Za-z0-9]{8,}$"

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


#read mobile number
read -p "Enter mobile number : " mobileNumber
if [[ $mobileNumber =~ $MOBILEPATTERN ]]
then
	echo "Valid mobile format"
else
	echo "Not valid mobile format"
fi


#read password from user and it must contain 8 character
read -p "Enter password : " password
if [[ $password =~ $PASSWORDPATTERN ]]
then
	echo "Valid password"
else
	echo "Invalid password"
fi
