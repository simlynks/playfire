#!/sbin/sh

###############################################################################################
###############################################################################################
##    LazyLeanback.sh Scripts by SimLynks for complete Install of "Playing with Fire" MOD    ##
##                                                                                           ##
##    LazyLeanback Installation Script (Version_v1_ALPHA) Release Date: July 8th, 2017)      ##
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
echo "DID YOU START ME FROM A ROOT SHELL? 
IF NOT YOU WILL GET AN ERROR MESSAGE AND NEED TO RESTART
THIS SCRIPT FROM A ROOT SHELL BEFORE I WILL WORK PROPERLY"  
echo " "

echo "To sucessfully install this MOD, the LazyLeanback Install Script will look for EXACTLY:
BusyBox-(Meefik)-v1.26.2.apk	= 	/sdcard/busybox.apk
XposedInstaller_3.1.1.apk	= 	/sdcard/XposedInstaller_3.1.1.apk
HDXPosed-1.3.apk		= 	/sdcard/HDXPosed-1.3.apk
PlayFire_v4_LazyLeanback.tar.gz	= 	/sdcard/PlayFire_v4_LazyLeanback.tar.gz

XposedEdge-LeanbackHome.tar.gz	= 	/sdcard/XposedEdge-LeanbackHome.tar.gz
				OR
XposedEdge-DefaultAFTVHome.tar.gz = 	/sdcard/XposedEdge-DefaultAFTVHome.tar.gz"


cp /system/build.prop /sdcard/backup.buildprop ;
pm install /sdcard/busybox.apk ;
pm install /sdcard/XposedInstaller_3.1.1.apk ;
pm install /sdcard/HDXPosed-1.3.apk ;
mount -o rw,remount /system ;
(sed -i 's|ro.build.version.number=.*|ro.build.version.number=987654321|' /system/build.prop ;
sed -i 's|ro.build.characteristics=.*|ro.build.characteristics=tv|' /system/build.prop ;
! grep -q "ro.com.google.clientidbase=android-xiaomi-tv" /system/build.prop && echo "ro.com.google.clientidbase=android-xiaomi-tv" >> /system/build.prop ;
! grep -q "ro.com.google.gmsversion=5.1_r1_TV" /system/build.prop && echo "ro.com.google.gmsversion=5.1_r1_TV" >> /system/build.prop) ;
cp /sdcard/PlayFire/tv_core_hardware.xml /system/etc/permissions/tv_core_hardware.xml && chmod 644 /system/etc/permissions/tv_core_hardware.xml && chown root:root /system/etc/permissions/tv_core_hardware.xml ;
cp /sdcard/PlayFire/whitelist.json /system/etc/whitelist.json && chmod 644 /system/etc/whitelist.json && chown root:root /system/etc/whitelist.json ;

tar -xzvpf /sdcard/XposedEdge-LeanbackHome.tar.gz -C / && (chown -R system:system /data/app/com.jozein.xedge-1 && chown -R root:root /data/data/com.jozein.xedge) ;
# OR
#tar -xzvpf /sdcard/XposedEdge-DefaultAFTVHome.tar.gz -C / && (chown -R system:system /data/app/com.jozein.xedge-1 && chown -R root:root /data/data/com.jozein.xedge) ;

mkdir /system/priv-app/TvSettings ;
chmod 755 /system/priv-app/TvSettings && cp /sdcard/PlayFire/PlayFire-TvSettings.apk /system/priv-app/TvSettings/TvSettings.apk && chmod 644 /system/priv-app/TvSettings/TvSettings.apk ;
chown root:root /system/priv-app/TvSettings/TvSettings.apk ;

cp /sdcard/PlayFire/android.hardware.wifi.direct.xml /system/etc/permissions/android.hardware.wifi.direct.xml && chmod 644 /system/etc/permissions/android.hardware.wifi.direct.xml && chown root:root /system/etc/permissions/android.hardware.wifi.direct.xml ;

mkdir /system/addon.d && chmod 755 /system/addon.d ;
cp /sdcard/PlayFire/25-playfire.sh /system/addon.d/ && chmod 755 /system/addon.d/25-playfire.sh && chown root:root /system/addon.d/25-playfire.sh ; 
cp /sdcard/PlayFire/70-gapps.sh /system/addon.d/70-gapps.sh && chmod 755 /system/addon.d/70-gapps.sh && chown root:root /system/addon.d/70-gapps.sh 

echo " "
echo " "
echo "Alright if you're seeing this, you are ALREADY almost done with the Install.
Now you just need to reboot into TWRP recovery and finish by flashing the last ZIPs"
echo "You will need to install SuperSU-v2.82.zip+XposedFramework.zip+OpenGApps TV-Stock.zip" 
echo "Once you have sucessfully installed the OpenGApps TV-Stock packages, you will 
run the next Script "LazyNoTouch.sh" to fix the Googe Login "spinning circle of doom" issue."
echo " "
echo "These FireTV MODs and & Installation Scripts are proudly brought to you by BEER" 
echo "As all my FireTV MODs are being released under the BEER-WARE Software License"
echo " 
#################################################################################
#										#
#			THE BEER-WARE LICENSE (Revision 42):			#
# <phk@FreeBSD.ORG> wrote this file.  As long as you retain this notice you	#
# can do whatever you want with this stuff. If we meet some day, and you think	#
# this stuff is worth it, you can buy me a beer in return.   Poul-Henning Kamp	#
#										#
#################################################################################"

echo " "
echo "Friendly reminder, that while all this has been brough to you by BEER-WARE,                                                                     
if you love your new AndroidTV-FireBox please try and make some more of that warm                                                                     
happy feeling go around (or in my case a nice cold happy feeling)"
echo " "
echo " "
