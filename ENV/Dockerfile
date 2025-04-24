FROM ubuntu

RUN apt-get update && apt-get install -y apache2 unzip

#Environment Variable.
ENV HTML=beginner-html-site-styled

#Download code from internet into a directory.
ADD https://github.com/mdn/$HTML/archive/refs/heads/gh-pages.zip /var/www/html/code.zip

RUN cd /var/www/html/ && unzip code.zip && mv /var/www/html/$HTML-gh-pages/* /var/www/html/ && echo $HTML > /var/www/html/env.html

CMD apachectl -D FOREGROUND
