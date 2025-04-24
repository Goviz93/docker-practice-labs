#!/bin/bash


echo "Staring apache service"

apachectl -D FOREGROUND

#Validate if the last command was succesfully executed.
if [ "$?" = 0 ]; then
	echo "The service is running fine."
else
	echo "There was an error starting the service."
fi	
