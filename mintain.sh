#!/bin/bash
# Mintain - Linux maintenance script
# David Lawson

BOLD="\033[1m"
NOCOLOR="\033[0m"

RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"

LIGHTRED="\033[1;91m"
LIGHTYELLOW="\033[1;92m"
LIGHTYELLOW="\033[1;93m"


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
echo -e "${BOLD}Command 1: ${YELLOW}update ${NOCOLOR}"
sudo apt-get update
echo

#timer
start=$SECONDS

#com2
echo -e "${BOLD}Command 2: ${YELLOW}upgrade ${NOCOLOR}"
sudo apt-get upgrade
echo

#com3
read -p "$(echo -e Command 3:$BOLD$YELLOW" dist-upgrade? (y/n) "$NOCOLOR)" -n 1 -r
echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
  sudo apt-get dist-upgrade
  fi
echo

#re-update
read -p "$(echo -e Re-update:$BOLD$YELLOW" update again? (y/n) "$NOCOLOR)" -n 1 -r
echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
  sudo apt-get update
  fi
echo

#com4
echo -e "${BOLD}Command 4: ${YELLOW}update-grub ${NOCOLOR}"
sudo update-grub2
echo

#com5
echo -e "${BOLD}Command 5: ${YELLOW}autoremove ${NOCOLOR}"
sudo apt-get autoremove
echo

#com6
echo -e "${BOLD}Command 6: ${YELLOW}autoclean ${NOCOLOR}"
sudo apt-get autoclean
echo

#com7 (only works with Trash-cli installed)
#echo -e "${BOLD}Command 7: ${YELLOW}empty trash ${NOCOLOR}"
#sudo trash-empty
#echo

#com8
echo -e "${BOLD}Command 8: ${YELLOW}clean ${NOCOLOR}"
sudo apt-get clean
echo

#done
echo -e "${BOLD}      Done ${YELLOW}and Done.${NOCOLOR} >>> ${BOLD}All Systems Go. ${NOCOLOR}"
echo
sleep 0.5

#endTimer
end=$SECONDS
echo -e "${BOLD}      Time ${YELLOW}elapsed:${RED} ${BOLD}$((end-start)) seconds. ${NOCOLOR}"
echo
echo
sleep 0.5

#return prompt
echo -e "           ${YELLOW}Here's your prompt.. ${NOCOLOR}"
sleep 0.2
echo
