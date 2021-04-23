sudo rm /etc/apache2/sites-enabled/000-default.conf
cp 000-default.conf /etc/apache2/sites-enabled/
a2enmod rewrite