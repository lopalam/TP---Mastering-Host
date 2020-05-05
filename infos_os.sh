#!/bin/bash
#Auteur : Valentin LACHAMP
#Dernière mise à jour : 30-04-2020
#Description : Sort les informations pricipales sur votre machine.

echo "----------Info sur l'OS----------"

#Nom de la machine
echo -n "Nom de la machine : "
cat /etc/hostname
#OS
echo -n "OS : "
cat /etc/os-release | grep 'NAME' | cut -d = -f2 | grep '"' | tr '\n' ',' | cut -d , -f1
#Version de l'OS
echo -n "version de l'OS : "
cat /etc/os-release | grep 'NAME' | cut -d = -f2 | grep '"' | tr '\n' ',' | cut -d , -f2
#Date allumage
echo -n "Date et heure d'allumage :"
last reboot | tr '\n' ',' | cut -d , -f1 | tr ' ' ',' | cut -d , -f8-12 | tr ',' '  '
echo -n "Espace RAM utilisé (Mb): "
free -m | grep 'Mem' | tr ' ' ',' | cut -d , -f19
echo -n "Espace RAM disponible (Mb): "
free -m | grep 'Mem' | tr ' ' ',' | cut -d , -f50
echo -n "Espace disque utilisé (Gb): "
df -h | grep '/dev/' | tr ' ' ',' | tr '\n' ',' | cut -d , -f12
echo -n "Espace disque libre (Gb): "
df -h | grep '/dev/' | tr ' ' ',' |tr '\n' ',' | cut -d , -f15

echo -e "\n-------------Network-------------"
#Adresse ip principale
echo -n "Ip pricipale : "
if ip a | grep wlo | grep inet | tr ' ' ',' | cut -d , -f6
then echo "Vous êtes connecté en Wi-fi."
elif ip a | grep enp | grep inet | tr ' ' ',' | cut -d , -f6
then echo "Vous êtes connecté par câble."
else echo "vous n'ếtes pas connecté."
fi
#ping
echo -n "Ping vers 8.8.8.8 (ms): "
ping 8.8.8.8 -c 5 | grep 'avg' | cut -d / -f5

echo -e "\n--------Liste utilisateur--------"
cut -d : -f1 /etc/passwd | tr '\n' ' ' #Nom de tous les utilisateurs
echo ""
