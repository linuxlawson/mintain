#!/bin/bash
# Mintain
# Linux maintenance script

bold="\033[1m"
nocolor="\033[0m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"

clear
printf "
#######################################
#  Bash script for Linux maintenance  #
#  Updates, upgrades, and cleans up.  #
#  Made with Linux Mint 18  (sarah)   #
#  Will work with most linux systems  #
#######################################
"

printf " 
Commands include: -update 
\t\t  -upgrade
\t\t  -dist-upgrade
\t\t  -update-grub
\t\t  -autoremove
\t\t  -autoclean 
\t\t  -empty-trash
\t\t  -clean 
\t\t  'dist-upgrade' will prompt (y/n)
\t\t   option to update again if/when upgrades exist (prompts)\n\n
"

read -n 1 -s -p "Press any key to continue.. "
clear


#com1- update
printf "\n${bold}Command 1: ${yellow}update ${nocolor}\n"
sudo apt-get update && printf "\n"

#start timer
start=$SECONDS

#com2- upgrade
printf "${bold}Command 2: ${yellow}upgrade ${nocolor}\n"
sudo apt-get upgrade && printf "\n"

#com3- dist-upgrade
read -p "$(printf ${bold}"Command 3:"${yellow}" dist-upgrade? (y/n) "${nocolor})" -n 1 -r
printf "\n"
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    sudo apt-get dist-upgrade
    fi
printf "\n"

#re-update
read -p "$(printf ${bold}"Re-update:"${yellow}" update again? (y/n) "${nocolor})" -n 1 -r
printf "\n"
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    sudo apt-get update
    fi
printf "\n"

#com4- update-grub
printf "${bold}Command 4: ${yellow}update-grub ${nocolor}\n"
sudo update-grub && printf "\n"

#com5- autoremove
printf "${bold}Command 5: ${yellow}autoremove ${nocolor}\n"
sudo apt-get autoremove && printf "\n"

#com6- autoclean
printf "${bold}Command 6: ${yellow}autoclean ${nocolor}\n"
sudo apt-get autoclean && printf "\n"

#com7- empty-trash
read -p "$(printf ${bold}"Command 7:"${yellow}" empty trash? (y/n) "${nocolor})" -n 1 -r
printf "\n"
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    trash-empty 2>/dev/null || printf "Skipped. [trash-cli not installed]\n"
    fi
printf "\n"
sleep 0.5


#com8- clean
printf "${bold}Command 8: ${yellow}clean ${nocolor}\n"
sudo apt-get clean && printf "\n"
sleep 0.5

#done
pad="     "
printf "$pad ${bold}Done ${yellow}and Done${nocolor}" ;  printf " >>> "; sleep 1 ; printf "${bold}All Systems Go ${nocolor}\n\n"
sleep 0.5

#end timer
end=$SECONDS
printf "$pad ${bold}Time ${yellow}elapsed:${red} $((end-start)) seconds ${nocolor}\n\n\n"
sleep 0.2

#return prompt
padd="          "
printf "$padd ${yellow}Here's your prompt.. ${nocolor}\n\n"
sleep 0.5

