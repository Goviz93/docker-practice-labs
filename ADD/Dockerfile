FROM ubuntu

RUN apt-get update && apt-get install -y apache2 unzip

#Download code from internet into a directory.
ADD https://github.com/mdn/beginner-html-site-styled/archive/refs/heads/gh-pages.zip /var/www/html/code.zip

 RUN cd /var/www/html/ && unzip code.zip && mv /var/www/html/beginner-html-site-styled-gh-pages/* /var/www/html/

CMD apachectl -D FOREGROUND
