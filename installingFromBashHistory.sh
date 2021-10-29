#!/usr/bin/bash

FILE=~/.bash_history
#FILE=~/shellFile/test.txt

#checking if file exists or not 

if [ -f "$FILE" ]
then echo "$FILE exists - start readin  the file"
else echo "$FILE not exists - check the location of the file || change the location of the file in the script"
fi

while read CURRENT_LINE
do
#finding lines with starting name sudo apt install
	if [[ "$CURRENT_LINE" =~ "sudo apt install" ]]
	    then 
	    echo -e "$LINE: $CURRENT_LINE __do you want to install it (y/n):"
		#taking inout from the current terminal or swap with your current terminal using command 'tty'...
	        read ANS < dev/pts/0
	        case "$ANS" in 
	        [y])
	            $CURRENT_LINE
	            ;;
	        *)
	            echo "going onto next line"
	            ;;
	        esac
	fi	
done < "$FILE"
