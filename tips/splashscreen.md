# Custom Splashscreen at boot

- cd ~
- sudo apt-get install fbi
- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/splash.jpg
- mv splash.png /etc/
- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/asplashscreen
- mv asplashscreen /etc/init.d/
- chmod a+x /etc/init.d/asplashscreen
- insserv /etc/init.d/asplashscreen
- sudo reboot
