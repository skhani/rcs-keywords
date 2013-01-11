#!/bin/bash

#if found text dont do anything, else insert it into the file
# exit status is 0 (true) if not found and 1 (false) if found
if grep -Lq "rcs-keywords" ~/.gitconfig
then
    break;
else
    echo '
[filter "rcs-keywords"]
    clean  = .git_filters/rcs-keywords.clean
    smudge = .git_filters/rcs-keywords.smudge %f' >> ~/.gitconfig;
fi

#execute the filters on php files
#.gitattributes 
#Map file extenstions to git filters
if grep -Lq "*.php filter=rcs-keywords" $1/.gitattributes
then
    break;
else
    echo '
*.php filter=rcs-keywords
    ' >> $1/.gitattributes;
fi

#copy the filter actions to the project directory
cp -r .git_filters $1 ;