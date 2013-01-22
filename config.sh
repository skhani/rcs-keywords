#!/bin/bash

#because of security the pre-commit hook can not be instantiated by default. this script needs to be
#ran for every project

file="$1".git/hooks/pre-commit;

#copy the pre-commit hook to the hooks folder 
cp -r pre-commit "$file";
