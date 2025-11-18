#!/bin/sh
clear
echo ' '
echo 'Welcome to VNC for Ngrok installation!'
echo ' '
echo "Insert your ngrok authtoken. If you don't know how to proceed read the readme file."
echo '!! FOR ACCESSINNG TO THE RDP, COPY "forwarding" AND PASTE IT INTO YOU VNC VIEWER !!'
echo ' '
echo 'Insert Ngrok token >>>'
read auth
echo ' '
sudo apt-get -y install tightvncserver
echo ' '
echo ' '
echo 'Select a password for your VNC connection.'
echo ' '
sudo vncpasswd
echo ' '
echo ' '
sudo apt-get -y install wget
sudo apt-get -y install curl
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
sudo tar xvzf ./ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin
ngrok authtoken ${auth}
clear
echo ' '
echo 'Script runned successfully! Start VNC running in your shell: "sh start-vnc.sh'
echo ' '
