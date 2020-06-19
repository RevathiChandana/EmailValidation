#!/bin/bash
shopt -s extglob
echo "To check Email validation"
read -p " enter first name : " first_name
read -p "enter last name : " last_name
print_valid_name()
{
        if [[ $1 =~ ^([A-Z]{1}+[a-z]{3,})$ ]]
        then
		echo "validate"
	else
		echo "name should start with capital and contains minimum 3 characters"
        fi
}
print_valid_name $first_name
print_valid_name $last_name
