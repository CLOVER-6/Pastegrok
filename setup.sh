#!/bin/bash

devKey=$1
userName=$2
userPassword=$3
userUserKey=$(curl -X POST --data-urlencode "api_dev_key"="$devKey" --data-urlencode "api_user_name"="$userName" --data-urlencode "api_user_password"="$userPassword" "https://pastebin.com/api/api_login.php")
badApiRequest="Bad API request"

if ! grep -q "$badApiRequest" <<< "$userUserKey";
    then
        echo "export PASTEBIN_API_DEV_KEY=$devKey" >> ~/.profile
        echo "export PASTEBIN_API_USER_KEY=$userUserKey" >> ~/.profile
else
    echo "

A request error occurred, this could be to do with your username/password syntax (see README.md notes) or external problems

$userUserKey"
fi
