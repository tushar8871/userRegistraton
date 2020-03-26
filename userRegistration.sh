
#!/bin/bash -x

#constants
NAMEPATTERN="^[A-Z][a-z]{3,}$"
EMAILPATTERN="^[a-zA-Z0-9._a-zA-Z0-9]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[A-Za-z]{2,4}$"
MOBILEPATTERN="^[0-9]{2} [7-9]{1}[0-9]{9}$"
PASSWORDPATTERN="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)*(.*[0-9].*{1}+)*(.*[!@#$%^&*=+].*{1}+)*[a-zA-Z0-9]{5,}$"

#variables
firstName=""
lastName=""
email=""
password=""

#welcome message
echo "Welcome to user registration validation ! "

#read first name from user
read -p "Enter first name : " firstName
if [[ $firstName =~ $NAMEPATTERN ]]
then
	echo "first name is valid"
else
	echo "Please enter first letter as capital"
fi

#read last name
read -p "Enter Last name : " lastName
if [[ $lastName =~ $NAMEPATTERN ]]
then
	echo "Last name is valid"
else
	echo "Please enter first letter as capital"
fi

#read email
read -p "Enter email : " email
if [[ $email =~ $EMAILPATTERN ]]
then
	echo "Email id is valid"
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
