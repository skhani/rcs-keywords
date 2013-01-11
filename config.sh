#!/bin/bash

#if found text dont do anything, else insert it into the file
# exit status is 0 (true) if not found and 1 (false) if found
if grep -Lq "rcs-keywords" ~/.gitconfig
then
    echo "rcs-keywords already exist in gitconfig. Moving on";
else
    echo '
[filter "rcs-keywords"]
    clean  = .git_filters/rcs-keywords.clean
    smudge = .git_filters/rcs-keywords.smudge %f' >> ~/.gitconfig;
fi

#execute the filters on php files
#.gitattributes 
#Map file extenstions to git filters

DIRECTORY=$1;
FILE="$1".gitattributes;

# if file does not exist create it and put the filters in it.
# elseif the keywords already there let the user know.
# else(the file exist bu the keywords are not) insert the keywords in there.
# the grep condition status results to 0 if true , and 1 if false;
if [ ! -f "$FILE" ] 
then
	touch  "$DIRECTORY".gitattributes;
	echo '*.php filter=rcs-keywords' >> "$DIRECTORY".gitattributes;

elif grep -Lq "*.php filter=rcs-keywords" "$FILE" 
then
	echo "rcs-keywords filter for php files already exist in .gitattributes. Moving on";

else
	echo '*.php filter=rcs-keywords' >> "$DIRECTORY".gitattributes;
fi

#copy the filter actions to the project directory
cp -r .git_filters "$DIRECTORY";
