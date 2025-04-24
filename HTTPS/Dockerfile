FROM ubuntu

RUN apt-get update && \
    apt-get install -y apache2 php openssl && \
    a2enmod ssl && \
    a2ensite default-ssl && \
    apt-get clean

COPY html-ssl /var/www/html

RUN echo "<?php phpinfo(); ?>" > /var/www/html/test.php

#Copy the cert to a folder into the image.
COPY docker.crt /docker.crt

#Copy the key to a folder into the image.
COPY docker.key /docker.key

#Overwrite the ssl configuration.
COPY ssl.conf /etc/apache2/sites-available/default-ssl.conf

CMD apachectl -DFOREGROUND
