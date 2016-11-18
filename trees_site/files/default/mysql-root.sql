UPDATE mysql.user SET authentication_string = PASSWORD('Btoidcim_40') WHERE User = 'root' AND Host = 'localhost';
FLUSH PRIVILEGES;
