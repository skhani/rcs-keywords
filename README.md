# Revision Control System Keywords #

This module provides a means to add keyword expansion of the following 
standard RCS tags to your git projects:

	 $Id$
	 $Date$
	 $File$
	 $Author$
	 $Revision$
	 $Source$

## Installation ##
* Clone the Project
* If you already have a .gitattributes file in your projects , please back it up. 
* Run the attached script (config.sh) by passing your project's root directory path as a parameter.
ex. sh config.sh ~/repository/CORE/
* Thats it ! 
* To verify, copy the hello.php file to your project. 
* Commit hello.php
* Remove hello.php
* Check it backout (git checkout hello.php)
* cat hello.php
* notice the values that were inserted in the keywords