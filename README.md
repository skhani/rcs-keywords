# Revision Control System Keywords #

This module provides a means to add keyword expansion of the following 
standard RCS tags to your git projects:

	 %Date%
	 %Author%

## Pre Req ##
awk
* verify you have awk on your system
 <pre> which -a awk
  type awk</pre>

## Installation ##

* Download the Project
* Run the attached script (config.sh) by passing your project's root directory path as a parameter.
ex. sh config.sh ~/repository/CORE/
* Thats it ! 
* Now anytime prior to the completion of your commit, the pre-commit script will replace the
  keywords with actual values. No need to change them, Regex takes care of it.