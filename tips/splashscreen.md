# Custom Splashscreen at boot

- cd ~
- sudo apt-get install fbi
- wget https://github.com/sixertoy/retrobox/new/master/tips/splash.png
- mv splash.png /etc/
- wget https://github.com/sixertoy/retrobox/new/master/tips/asplashscreen
- mv asplashscreen /etc/init.d/
- chmod a+x /etc/init.d/asplashscreen
- insserv /etc/init.d/asplashscreen
- sudo reboot
