#!/bin/bash
echo -e "
############################################################################
#
# Welcome to \e[32m`hostname`\e[0m, you are logged in as \e[32m`whoami`\e[0m
# This system is running `cat /etc/redhat-release`
# kernel is `uname -r`
# Uptime is
\e[31m`uptime | sed 's/.*up ([^,]*), .*/1/'`\e[0m
# Mem total `cat /proc/meminfo | grep MemTotal | awk {'print $2'}` kB
############################################################################"
