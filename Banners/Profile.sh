#!/bin/bash
echo -e "
################################################################################
#
# Welcome to \e[32m`hostname`\e[0m, you are logged in as \e[32m`whoami`\e[0m
# This system is running \e[32m`cat /etc/redhat-release`\e[0m
# kernel is \e[32m`uname -r`\e[0m
# Uptime is \e[31m`uptime | sed 's/.*up ([^,]*), .*/1/'`\e[0m
# Mem total \e[31m`cat /proc/meminfo | grep MemTotal | awk {'print $2'}` kB\e[0m
# Developer: \e[36mChaitanya Chandra\e[0m
# Email: \e[36memail@chaitu.net\e[0m
#
#################################################################################"
