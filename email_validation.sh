#!/bin/bash
shopt -s extglob
read -p " enter password  : " password
valid_password()
{
        if [[ $1 =~ ^([a-zA-Z0-9@#!]{8,})$ ]]
        then
                echo "valid password"
        else
                echo "password sholud contain minimum 8 characters"
        fi
}
valid_password $password
