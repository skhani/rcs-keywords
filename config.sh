#!/bin/bash

#because of security the pre-commit hook can not be instantiated by default. this script needs to be
#ran for every project

directory="$1"

#case statement to check if the input directory has a backslash or not
#then appending the pre-commit file
case "$directory" in 
    */)
        file="$1".git/hooks/pre-commit;
        ;;
    *)
        file="$1"/.git/hooks/pre-commit;
        ;;
esac

#copy the pre-commit hook to the hooks folder 
cp -r pre-commit "$file";
