#!/bin/bash
#
#
#  forgetssid.sh -- Forget preferred wi-fi network 
#
# Use $4 variable in JSS to define WiFi network to forget.

#Detect our Wi-Fi interface

wifi=`networksetup -listallhardwareports | awk "/Wi-Fi/,/Ethernet Address/" | awk 'NR==2' | cut -d " " -f 2`

#Remove SSID

networksetup -removepreferredwirelessnetwork $wifi "$4"