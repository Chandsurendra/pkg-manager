#! /bin/bash

# Color variables

red='\033[1;31m'

green='\033[1;32m'

yellow='\033[0;33m'

blue='\033[0;34m'

magenta='\033[0;35m'

cyan='\033[0;36m'

# Clear the color after that

clear='\033[0m'

echo -e "${green}To install package press 1${clear}"

echo -e "${red}To remove package press 2 ${clear}"

read no

ins() {

echo -e "${blue}type package name do you want to install${clear}"

read pkg

echo -e "${green} Installing $pkg ${clear}"

pkg install $pkg -y

}

rem() {

echo -e "${yellow}type package name do you want to remove ${clear}"

read pkg

echo -e "${red} Removling $pkg ${clear}"

pkg remove $pkg -y

}

if [ $no -eq 1 ]

then

ins

fi

if [ $no -eq 2 ]

then

rem

fi

