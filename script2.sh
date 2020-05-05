#!/bin/bash
#Auteur : Valentin LACHAMP
#Mis à jour le : 04/05/2020
#Description : executer le script suivie de off pour eteindre le systeme, ou de lock pour le verouiller.
#Un deuxieme argument opotioinnel peut etre ajouter pour indiquer dans combien de temps.

if [ $# -gt  2 ]
then
	echo "Ce script ne peut prendre que deux arguments."

elif [ $# -eq 2 ]
then
	sleep $2

elif [ $# -lt 1 ]
then
	echo "Vous devez entrer un paramètre."
	exit 1
fi

if [ $1 == "off" ]
then
	poweroff
elif [ $1 == "lock" ]
then
	if [ $(env | grep 'XDG_CURRENT_DESKTOP' | cut -d = -f2) == 'KDE' ]
	then
		qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock
	elif [ $(env | grep 'XDG_CURRENT_DESKTOP' | cut -d = -f2) == 'gnome' ]
	then 
		gnome-screensaver-command --lock
	elif [ $(env | grep 'XDG_CURRENT_DESKTOP' | cut -d = -f2) == 'xfce' ]
	then
		xscreensaver-command -lock
	fi
fi

		
