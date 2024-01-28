#!/bin/bash

devKey=$1
userName=$2
userPassword=$3
userUserKey=$(curl -X POST -d "api_dev_key=$1" -d "api_user_name=$2" -d "api_user_password=$3" "https://pastebin.com/api/api_login.php")
badApiRequest="Bad API request"

if ! grep -q "$badApiRequest" <<< "$userUserKey";
    then
        echo "export PASTEBIN_API_DEV_KEY=$1" >> ~/.profile
        echo "export PASTEBIN_API_USER_KEY=$userUserKey" >> ~/.profile
else
    echo "A request error occurred, this could be to do with your username/password syntax (see README.md notes) or external problems

	$userUserKey"
fi
