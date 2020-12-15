#!/bin/bash -x
shopt -s extglob
#function to take firstname as an input
function input()
{
 echo "Enter the FirstName"
 read name
 firstName $name
}

#function to validate firstname with first letter being capital followed by minimum 3 characters
function firstName
{
 word=$1
 firstNameExpression="^[A-Z]{1}[a-z]{2,}$"
 if [[ $word =~ $firstNameExpression ]]
 then
  echo Valid Name;
 else
  echo Invalid Name;
 fi
}

input

