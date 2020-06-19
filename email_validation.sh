#!/bin/bash -x
shopt -s extglob
echo "To check Email validation"
read -p " enter email_id : " email_id
print_valid_email_id()
{
        if [[ $1 =~ ^([A-Za-z0-9.-+_]+@[A-Za-z0-9]+\.[A-Za-z]{2,6})$ ]]
        then
                echo "validate"
        else
                echo "not a valid email id."
        fi
}
print_valid_email_id $email_id
