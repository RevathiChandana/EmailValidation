#!/bin/bash
shopt -s extglob
read -p " enter password  : " password
valid_password()
{
        if [[ $1 =~ ^([a-zA-Z0-9@#!]{8,})$ ]]
        then
		if [[ $1 =~ ^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$ ]]
		then
                	echo "valid password"
		else
			echo "password must have atleast one capital"
		fi
        else
                echo "password sholud contain minimum 8 characters"
        fi
}
valid_password $password
