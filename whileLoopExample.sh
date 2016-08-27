#!/bin/sh

#  whileLoopExample.sh
#  
#
#  Created by ASCI-Blue on 8/26/16.
#


strArray_continu="Type 1, 2, 3, 4, 5, 6 and press [ENTER] to select a script to run, or \" 0 \" "
for n in $strArray_continu; do
echo -n "$n"" "
sleep .06
done
echo
read menuChoice
echo
echo $menuChoice
if  [ $menuChoice="\n" ]; then
echo -e "\t Invalid Response. Enter '0' to exit out of menu"
read menuChoice
fi

while [ $menuChoice -ne "0" ]; do

if  [ $menuChoice="\n" ]; then
echo -e "\t Invalid Response. Enter '0' to exit out of menu"
read menuChoice
fi


if [ $menuChoice -eq 1 ]; then
sleep .5
clear
echo
echo
sleep .8
strArray="\t smb-vuln-conficker \n \t \" Conficker, also known as Downup, Downadup and Kido, is a computer worm targeting the Microsoft Windows operating system that was first detected in November 2008.[1] It uses flaws in Windows OS software and dictionary attacks on administrator passwords to propagate while forming a botnet, and has been unusually difficult to counter because of its combined use of many advanced malware techniques.[2][3] The Conficker worm infected millions of computers including government, business and home computers in over 190 countries, making it the largest known computer worm infection since the 2003 Welchia.[4]\" \n"

for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
echo -e " \t nmap --script=smb-vuln-conficker $IPAddress"
echo
sleep 1

nmap --script=smb-vuln-conficker $IPAddress

fi


if [ $menuChoice -eq 2 ]; then
sleep .5
clear
echo
echo
sleep .8
strArray="\t cve2009-3103 $IPAddress \n \t \" \t Detects Microsoft Windows systems vulnerable to denial of service (CVE-2009-3103). This script will crash the service if it is vulnerable.\n  \t The script performs a denial-of-service against the vulnerability disclosed in CVE-2009-3103. This works against Windows Vista and some versions of Windows 7, and causes a bluescreen if successful. The proof-of-concept code at http://seclists.org/fulldisclosure/2009/Sep/39 was used, with one small change. \n"

for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
echo -e " \t nmap --script=smb-vuln-cve2009-3103 $IPAddress"
echo
sleep 1
nmap --script=smb-vuln-cve2009-3103 $IPAddress

fi


if [ $menuChoice -eq 3 ]; then
sleep .5
clear
echo
echo
sleep .8
strArray="\t smb-vuln-ms06-025 \n \t \" \t Vulnerability in Routing and Remote Access Could Allow Remote Code Execution (911280) \n"

for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
echo -e " \t nmap --script=smb-vuln-ms06-025 $IPAddress"
echo
sleep 1

nmap --script=smb-vuln-ms06-025 $IPAddress

fi

if [ $menuChoice -eq 4 ]; then
sleep .5
clear
echo
echo
sleep .8
strArray="\t smb-vuln-ms06-025 \n \t \" \t Vulnerability in Routing and Remote Access Could Allow Remote Code Execution (911280) \n"

for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
echo -e " \t nmap --script=smb-vuln-ms06-025 $IPAddress"
echo
sleep 1

nmap --script=smb-vuln-ms07-029 $IPAddress
fi



if [ $menuChoice -eq 5 ]; then
sleep .5
clear
echo
echo
sleep .8
strArray="\t smb-vuln-regsvc-dos \n \t \" \t Vulnerability in Routing and Remote Access Could Allow Remote Code Execution (911280) \n"

for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
echo -e " \t nmap --script=smb-vuln-regsvc-dos $IPAddress"
echo
sleep 1

nmap --script=smb-vuln-regsvc-dos $IPAddress
fi

if [ $menuChoice -eq 6 ]; then
sleep .5
clear
echo
echo
sleep .8
strArray="\t smb-vuln-ms08-067 \n \t \" \t Vulnerability in Routing and Remote Access Could Allow Remote Code Execution (911280) \n"

for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
echo -e " \t nmap --script=smb-vuln-ms08-067 $IPAddress"
echo
sleep 1

nmap --script=smb-vuln-ms08-067 $IPAddress

fi


read menuChoice


done