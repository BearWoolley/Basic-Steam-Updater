#!/bin/bash

#Version 1.0.0 by BearWoolley
#Released under MIT License refer to License for information

steamcmd="/home/user/steam" #Be sure to change to your steamcmd.sh location
appid=4020 #AppId of the servers you want to update. Check Steam Docs for Game ID's
declare -A servers
servers=(["/home/gmod/example1"]="deathrun" ["/home/gmod/example2"]="bhop") #Change this to the location of your servers and add more if you had more than 2 servers

#-----Do not edit below this line-----#

for server in "${!servers[@]}"; do
	cd $steamcmd
	./steamcmd.sh +login anonymous +force_install_dir $server +app_update $appid validate +quit
done

echo "Update of servers has been completed"