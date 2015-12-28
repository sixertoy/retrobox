# Custom Splashscreen at boot

- cd ~
- sudo apt-get install fbi
- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/splash.jpg
- sudo mv splash.jpg /etc/
- wget https://raw.githubusercontent.com/sixertoy/retrobox/master/files/asplashscreen
- sudo mv asplashscreen /etc/init.d/
- chmod a+x /etc/init.d/asplashscreen
- sudo insserv /etc/init.d/asplashscreen
- sudo reboot
