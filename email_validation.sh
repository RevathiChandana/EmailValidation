#!/bin/bash
shopt -s extglob
echo "To check Email validation"
read -p " enter a valid first name : " first_name
print_valid_First_name()
{
        if [[ $1 =~ ^([A-Z]{1}+[a-z0-9]{3,})$ ]]
        then
                echo "first name is validate."
        else
                echo "first name is not validate."
        fi
}
print_valid_First_name $first_name
