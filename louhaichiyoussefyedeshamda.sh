#!/bin/bash
. analyse.sh






if [ $# -eq "0" ];then     #si pas d'arguments
	show_usage
	exit		   

else			   


	test=false

	#for i in $* 

	#do 

		if [[ $1 == "-"[a-z,A-Z] ]];then
			test=true
		fi

	#done

		if [ $test == "false" ];then

			echo "erreur";
			exit
		fi









	echo -e "\nBienvenue $USER"


	echo "
	██████╗ ██████╗  █████╗      ██╗███████╗████████╗    ██╗██╗
	██╔══██╗██╔══██╗██╔══██╗     ██║██╔════╝╚══██╔══╝   ██╔╝██║
	██████╔╝██████╔╝██║  ██║     ██║█████╗     ██║     ██╔╝ ██║
	██╔═══╝ ██╔══██╗██║  ██║██╗  ██║██╔══╝     ██║     ███████║
	██║     ██║  ██║╚█████╔╝╚█████╔╝███████╗   ██║     ╚════██║
	╚═╝     ╚═╝  ╚═╝ ╚════╝  ╚════╝ ╚══════╝   ╚═╝          ╚═╝
	🅰 🅽 🅰 🅻 🆈 🆂 🅴   🅳 🆄   🅵 🅸 🅲 🅷 🅸 🅴 🆁 / 🅴 🆃 🅲 / 🅿 🅰 🆂 🆂 🆆 🅳
	"

fi







while getopts "hvgmnpG:t:" option
do

	case $option in
		h) 	HELP
			;;
		v)	author
			;;
		g)	menu_yad
			;;
		m)	menu_textuel		
			;;
		n)  	count_users
			;;
		p)  	show_home_directory
			;;
		G)  	show_users_inGroup $OPTARG
			;;
		t)	userType $OPTARG
			;;
		*)
			echo -e " Veuillez verifier votre choix \n Tapez (analyse.sh -h) pour plus d'info"	
			exit
			;;
	esac
done


