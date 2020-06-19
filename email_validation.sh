#!/bin/bash
shopt -s extglob
echo "To check Email validation"
read -p " enter mobile number using format  : " mobile_number
valid_mobile_number()
{
        if [[ $1 =~ ^[0-9]{2}[[:space:]][0-9]{10}$ ]]
        then
                echo "valid mobile number"
        else
                echo "not a valid mobile number."
        fi
}
valid_mobile_number $mobile_number
