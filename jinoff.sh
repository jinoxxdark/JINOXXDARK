#!/bin/bash

# Colors
red='\033[0;31m'
grn='\033[0;32m'
ylw='\033[1;33m'
cy='\033[0;36m'
nc='\033[0m'

while true; do
clear

echo -e "${cy}██████╗ ██╗███╗   ██╗ ██████╗"
echo "██╔══██╗██║████╗  ██║██╔════╝"
echo "██████╔╝██║██╔██╗ ██║██║  ███╗"
echo "██╔══██╗██║██║╚██╗██║██║   ██║"
echo "██║  ██║██║██║ ╚████║╚██████╔╝"
echo -e "╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝   J I N O X X${nc}"

echo -e "${grn}---------------------------------------------${nc}"
echo -e "
${red}[1]${nc} JINOXX tools
${red}[2]${nc} JINOXX spam
${red}[3]${nc} JINOXX finder
${red}[4]${nc} About JINOXX
${red}[5]${nc} Uninstall
${red}[0]${nc} Exit
"
echo -e "${grn}---------------------------------------------${nc}"

echo -ne "${ylw}[*] Choose (JINOXX) : ${nc}"
read ch

case $ch in
    1)
        echo -e "${cy}>>> Showing JINOXX tools...${nc}"
        sleep 1
        ;;
    2)
        echo -e "${red}>>> Running spam module...${nc}"
        sleep 1
        ;;
    3)
        echo -ne "${cy}Enter name to search: ${nc}"
        read name
        echo "Searching for $name ..."
        sleep 1
        ;;
    4)
        echo -e "${cy}JINOXX SYSTEM — Version 1.0${nc}"
        sleep 2
        ;;
    5)
        echo -e "${red}Uninstalling JINOXX...${nc}"
        sleep 1
        ;;
    0)
        echo -e "${ylw}Exiting JINOXX...${nc}"
        exit
        ;;
    *)
        echo -e "${red}Invalid choice!${nc}"
        sleep 1
        ;;
esac

done
