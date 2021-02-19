#!/bin/bash
mkdir -p log

helpFunction()
{
   echo ""
   echo -e "\033[1mUSAGE\033[0m: start.sh [arg1] [arg2]"
   echo ""
   echo -e "\033[1mARGUMENTS:\033[0m"
   echo -e "    -arg1     Java jar filename on current directory"
   echo -e "    -arg2     Application profile (dev/prod,swagger)"
   echo ""
   exit 1 # Exit script after printing help
}

#check if argument not empty
if [ -z $1 ] || [ -z $2 ]
then
   echo -e "\033[1mError\033[0m: Some or all of the arguments are empty";
   helpFunction
fi

#check if file exist
if [ ! -f "$1" ]
then
   echo -e "\033[1mError\033[0m: Java jar/war file not found on current directory";
   helpFunction
fi

#validate file extention
if [ ${1: -4} != ".jar" ] && [ ${1: -4} != ".war" ]
then 
   echo -e "\033[1mError\033[0m: Invalid file extension to run. Please use Java jar/war file!";
   helpFunction
fi

#check profile mode
if [ "$2" != "dev" ] && [ "$2" != "dev,swagger" ] &&
   [ "$2" != "prod" ] && [ "$2" != "prod,swagger" ]
then
   echo -e "\033[1mError\033[0m: Invalid profile mode. Please select [dev], [dev,swagger], [prod], or [prod,swagger]!";
   helpFunction
fi

if [ -d "config/" ] 
then
   nohup java -jar $1 --spring.config.location=config/ --spring.profiles.active=$2 & echo $! > ./pid.file & disown
else
   java -jar $1 --spring.profiles.active=$2
fi
