FROM ubuntu

RUN apt-get update && apt-get install -y apache2 unzip

#Environment Variable.
ENV HTML=beginner-html-site-styled

#Set the work directory.
WORKDIR /var/www/html/

#Download code from internet into a directory.
ADD https://github.com/mdn/$HTML/archive/refs/heads/gh-pages.zip ./code.zip

RUN unzip code.zip && mv $HTML-gh-pages/* . && echo $HTML > ./env.html

CMD apachectl -D FOREGROUND
