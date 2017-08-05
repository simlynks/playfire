#!/sbin/sh

###############################################################################################
###############################################################################################
##   LazyLeanback.sh Scripts by SimLynks for complete Install of "Playing with Fire" MOD     ##
##                                                                                           ##
##    LazyNoTouch Installation Script (Version_v1_ALPHA) Release Date: July 8th, 2017)       ##
##                                                                                           ##
##               Compatible with both (ARM) and (ARM64) on Lollipop 5.0 & 5.1                ##
##                                                                                           ##
## https://forum.xda-developers.com/fire-tv/general/total-mod-playing-fire-complete-t3629990 ##
##-------------------------------------------------------------------------------------------##
##                       "THE BEER-WARE LICENSE" (Revision 42):                              ##
##       <phk@FreeBSD.ORG> wrote this file.  As long as you retain this notice you           ##
##       can do whatever you want with this stuff. If we meet some day, and you think        ##
##       this stuff is worth it, you can buy me a beer in return.   Poul-Henning Kamp        ##
##                                                                                           ##
###############################################################################################
###############################################################################################

echo " "
echo "DID YOU START ME FROM A ROOT SHELL? IF NOT YOU WILL GET AN ERROR MESSAGE AND NEED TO RESTART
THIS SCRIPT FROM A ROOT SHELL BEFORE I WILL WORK PROPERLY"
echo " "

mount -o rw,remount /system
mkdir /system/app/NoTouchAuthDelegate/ && chmod 755 /system/app/NoTouchAuthDelegate/ && rm /system/app/NoTouchAuthDelegate/NoTouchAuthDelegate.apk ;

echo " "
echo "You are supposed to get an error message when the above line runs. Do not worry and proceed" 
echo " "

cp /sdcard/PlayFire/TV-NoTouchGsf.apk /system/app/NoTouchAuthDelegate/NoTouchAuthDelegate.apk ;
chmod 644 /system/app/NoTouchAuthDelegate/NoTouchAuthDelegate.apk && chown root:root /system/app/NoTouchAuthDelegate/NoTouchAuthDelegate.apk

echo "And with that painless little command, you have just finished installing the entire Mod!" 
echo "All you need to do now is reboot your system and enable Xposed & Xposed Edge & XEdge Keys"
echo " "
echo "Also REMEMBER that ANY TIME YOU REINSTALL OpenGApps TV-Stock, YOU NEED TO RE-RUN THIS FILE"
echo " "
echo "The Playing with Fire MOD Project has been brought to you by BEER-WARE"
echo " "
echo "
##-------------------------------------------------------------------------------------------##
##                         THE BEER-WARE LICENSE (Revision 42):                              ##
##       <phk@FreeBSD.ORG> wrote this file.  As long as you retain this notice you           ##
##       can do whatever you want with this stuff. If we meet some day, and you think        ##
##       this stuff is worth it, you can buy me a beer in return.   Poul-Henning Kamp        ##
##                                                                                           ##
###############################################################################################
"

