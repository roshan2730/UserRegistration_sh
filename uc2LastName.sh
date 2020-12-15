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

#function to validate firstname and lastname with first letter being capital followed by minimum 3 characters
function expressionForNameCheck()
{
 word=$1
 NameExpression=^[A-Z]{1}[a-z]{2,12}$
 if [[ $word =~ $NameExpression ]]
 then
  echo Valid Name;
 else
  echo Invalid Name;
 fi
}

inputForFirstName
inputForLastName
