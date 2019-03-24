#!/bin/bash
file="yourfilepath/number.txt"
from="sender"
user="user"
from="from"
sms="message"
while IFS= read -r number
do
	printf '%s\n' "$number"' Sent'
	curl -q "http://www.thsms.com/api/rest?method=send&username=$user&password=$password&from=$from&to=$number&message=$sms"
done <"$file"
