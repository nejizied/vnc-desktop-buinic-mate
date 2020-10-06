#!/bin/bash

read -p 'please provide the user to login with: ' user
read -p 'please privide the password to the user you are logging in with: ' password
read -p 'please privide the 80  port: ' port1
read -p 'please privide the 5900 port: ' port2
read -p 'please provide VNC pasword:' vnc_password
read =p 'please provide HTTP password' http_pasword

docker run -d --restart unless-stopped  --name desktop-mate-${user} -p ${port1}:80 -p ${port2}:5900 -e VNC_PASSWORD=${vnc_password}  -e USER=${user} -e PASSWORD=${password} -e HTTP_PASSWORD=${http_password}-e VIRTUAL_PORT=80 "$(pwd)"/opt-${user}/:/opt/ -v /dev/shm:/dev/shm -v "$(pwd)"/desktop-${user}:/home/${user} vnc-desktop-docker:bionic-mate

