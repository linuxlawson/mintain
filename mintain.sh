#!/bin/bash
# Mintain
# Linux maintenance script

bold="\033[1m"
nocolor="\033[0m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"


clear
echo 
echo "#######################################"
echo "#  Bash script for Linux maintenance  #"
echo "#  Updates, upgrades, and cleans-up.  #"
echo "#  Made with Linux Mint 18  (sarah)   #"
echo "#  Will work for most linux systems   #"
echo "#######################################"


echo
sleep 0.2
echo "Commands include: -update" 
echo "                  -upgrade"
echo "                  -dist-upgrade"
echo "                  -update-grub"
echo "                  -autoremove"
echo "                  -autoclean" 
#echo "                  -empty-trash"
echo "                  -clean  (in that order)"
echo
echo "                  'dist-upgrade' will prompt (y/n)"
echo "                  option to update again IF upgrades were available (prompts)"
sleep 0.2
echo
echo 
read -n 1 -s -p "Press any key to continue.. "
clear


#com1
echo
echo -e "${bold}Command 1: ${yellow}update ${nocolor}"
sudo apt-get update
echo

#start timer
start=$SECONDS

#com2
echo -e "${bold}Command 2: ${yellow}upgrade ${nocolor}"
sudo apt-get upgrade
echo

#com3
read -p "$(echo -e ${bold}Command 3:${yellow}" dist-upgrade? (y/n) "${nocolor})" -n 1 -r
echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
  sudo apt-get dist-upgrade
  fi
echo

#re-update
read -p "$(echo -e ${bold}Re-update:${yellow}" update again? (y/n) "${nocolor})" -n 1 -r
echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
  sudo apt-get update
  fi
echo

#com4
echo -e "${bold}Command 4: ${yellow}update-grub ${nocolor}"
sudo update-grub
echo

#com5
echo -e "${bold}Command 5: ${yellow}autoremove ${nocolor}"
sudo apt-get autoremove
echo

#com6
echo -e "${bold}Command 6: ${yellow}autoclean ${nocolor}"
sudo apt-get autoclean
echo

#com7 (only works with trash-cli installed)
#echo -e "${bold}Command 7: ${yellow}empty trash ${nocolor}"
#sudo trash-empty
#echo

#com8
echo -e "${bold}Command 8: ${yellow}clean ${nocolor}"
sudo apt-get clean
echo

#done
echo -e "${bold}      Done ${yellow}and Done.${nocolor} >>> ${bold}All Systems Go. ${nocolor}"
echo
sleep 0.5

#end timer
end=$SECONDS
echo -e "${bold}      Time ${yellow}elapsed:${red} $((end-start)) seconds. ${nocolor}"
echo
echo
sleep 0.5

#return prompt
echo -e "           ${yellow}Here's your prompt.. ${nocolor}"
sleep 0.2
echo
