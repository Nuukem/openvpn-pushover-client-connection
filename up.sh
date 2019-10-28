#!/bin/bash

PUSHOVER_USER_KEY=""
PUSHOVER_APP_KEY=""
CLIENT="Home"
USE_HTML_FORMAT=1

time=$(echo $(date +"%c"))

TITLE="OpenVPN :: $common_name CONNECTED to $CLIENT"
MESSAGE="User has connected to <b>$CLIENT</b>:<br> \
<b>Common Name:</b> $common_name<br> \
<b>Connected Since:</b> $time<br> \
<b>Real Address:</b>$untrusted_ip<br> \
<b>Virtual Address:</b> $ifconfig_pool_remote_ip<br> \
<b>Date:</b> `date -R`"

wget https://api.pushover.net/1/messages.json --post-data="token=$PUSHOVER_APP_KEY&user=$PUSHOVER_USER_KEY&message=$MESSAGE&title=$TITLE&html=$USE_HTML_FORMAT" -qO- > /dev/null 2>&1 &
