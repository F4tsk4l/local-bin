#!/bin/bash
connmanctl disable wifi
#&& connmanctl disable ethernet
sleep 1
sudo macchanger -rb wlan0 
#&& sudo macchanger -rb eth0
sleep 1
connmanctl enable wifi 
#&& connmanctl enable ethernet
