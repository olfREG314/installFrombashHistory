#!/usr/bin/bash

#location of the file
FILE=~/.bash_history  

echo "\n"
#check if file exists or not 
if [ -f "$FILE" ]
then echo "$FILE exists - start reading the lines"
else echo "$FILE does not exists - check the location of the file || change the location of the file in the script"
fi

#getting the current terminal
CURRENT_TERMINAL=$(tty)

while read CURRENT_LINE
do
#finding lines with starting name sudo apt install
	if [[ "$CURRENT_LINE" =~ "sudo apt install" ]]
	    then 
	    echo -e "$LINE: $CURRENT_LINE __do you want to install it (y/n):"
		#taking inout from the current terminal or swap with your current terminal using command 'tty'...
	        read ANS < $CURRENT_TERMINAL #its takes input from user via terminal script is running
	        case "$ANS" in 
	        [y])
	            $CURRENT_LINE #run the command
	            ;;
	        *)
	            echo "going onto next line"
	            ;;
	        esac
	fi	
done < "$FILE"
