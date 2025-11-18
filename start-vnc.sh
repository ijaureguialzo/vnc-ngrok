sudo vncserver -geometry 1920x1080
ngrok tcp 127.0.0.1:5901
sudo vncserver -kill
echo 'Stopped VNC!'
