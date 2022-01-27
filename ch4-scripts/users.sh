#!/bin/bash

#################################################################################################################################################################
#simple script that gets the min and max UID and saves a list of normal users to USERS file, view the file and delete the file when you are finished if you want#
#Michael Rogers 
#################################################################################################################################################################

#Global Variables



#Global Functions

get_users(){
	eval getent passwd {$(awk '/^UID_MIN/ {print $2}' /etc/login.defs)..$(awk '/^UID_MAX/ {print $2}' /etc/login.defs)} >USERS
}


m_menu() {	
	echo -e  "		Menu
		======
		(S)ave to USERS File  
	        (V)iew USERS File 
	        (R)emove USERS File 
	        (Q)uit 
	        Enter your choice: \c"

	 read u_input

	 case $u_input in
		s | S ) get_users
		;;
		v | V ) c_file
		;;
		r | R ) rm USERS
		;;
		q | Q ) exit 
		;;
		* ) echo "Please choose the letter within () to make your selection"
		;;
	esac
}

v_menu() {
	cat USERS

	echo -e "		(M)ain Menu 
		(R)emove USERS.txt 
		(Q)uit 
		Enter Your Choice: \c"
	read u_input

	case $u_input in
		m | M ) m_menu
		;;
		r | R ) rm USERS
		;;
		q | Q ) exit 
		;;
		* ) echo "Please choose the letter within () to make your selection"
		;;
	esac
}

c_file(){
	if [ -f "USERS" ]; then 
		v_menu
	else
		get_users
		v_menu
	fi
}

while : 
do
	m_menu
done


