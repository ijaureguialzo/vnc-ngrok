sudo vncserver -geometry 1920x1080
sudo xfce4-panel -r && xfwm4 --replace
ngrok tcp 127.0.0.1:5901
sudo vncserver -kill
echo 'Stopped VNC!'
