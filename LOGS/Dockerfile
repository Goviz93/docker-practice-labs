FROM ubuntu

#Arguments.
ARG user=appuser
ARG library

#Labels.
LABEL maintainer="Gonzalo V"
LABEL creation_date="01/01/2023"

RUN apt-get update && apt-get install -y $library: unzip

#Environment Variable.
ENV HTML=beginner-html-site-styled

#Set the work directory.
WORKDIR /var/www/html/

#Download code from internet into a directory.
ADD https://github.com/mdn/$HTML/archive/refs/heads/gh-pages.zip ./code.zip

RUN unzip code.zip && mv $HTML-gh-pages/* . && echo $HTML > ./env.html

#Add a new User.
RUN useradd $user

#Change the ownership.
RUN chown $user:$user /var/www/html -R

#Swtich to appuser.
USER $user:

#Remove old files.
RUN rm -rf code.zip  $HTML-gh-pages/

#Swtich back to rootuser.
USER root

#Copy the bash script.
COPY cmd.sh /cmd.sh

#Set permissions to execute the script.
RUN chmod +x /cmd.sh

#Executes the script to see the output in the logs.
CMD /cmd.sh
