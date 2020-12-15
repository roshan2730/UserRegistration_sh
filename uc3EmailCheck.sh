#!/bin/bash -x
shopt -s extglob
#function to take firstname as an input
function inputForFirstName()
{
 printf "Enter the FirstName"
 read name
 expressionForNameCheck $name
}

#function to take lastname as an input
function inputForLastName()
{
 printf "Enter the LastName"
 read lastname
 expressionForNameCheck $lastname
}

#function to take email as an input
function inputForEmail()
{
 printf "Enter the Email Address"
 read address
 emailValidationCheck $address
}

#function to validate firstname and lastname with first letter being capital followed by minimum 3 characters
function expressionForNameCheck()
{
 word=$1
 nameExpression=^[A-Z]{1}[a-z]{2,12}$
 if [[ $word =~ $NameExpression ]]
 then
  echo Valid Name;
 else
  echo Invalid Name;
 fi
}

#function to check email validation
function emailValidationCheck()
{
 email=$1
 emailExpression="^([a-zA-Z]{1,10})(.{1}[0-9]{0,10})?([.]{1}[a-zA-Z ]{1,10})?[@]([0-9a-z]{1,10}[.])?([a-z]{2,3})([.][a-z]{2,3})?$"
 if [[ $email =~ $emailValidationCheck ]]
 then
  echo Valid Email;
 else
  echo Invalid Email;
 fi
}


inputForFirstName
inputForLastName
inputForEmail
