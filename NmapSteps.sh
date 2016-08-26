

#######Enter Demo########
sleep .5
clear
strArray="This is a demo of nmap and its uses. It is based off of content derived from CIS 102 at De Anza College (Ethical Hacking). The script will occasionally prompt the user for input on whether to continue or not. Press [ENTER] after each command for it to run"
for n in $strArray; do
echo -n "$n"" "
sleep .06
done
echo

echo "Confirm to continue: [ENTER]"
read UserInput

sleep .5

if [ UserInput="y" ]; then

    let num=$RANDOM%100;
    ((num=num+30))
    sleep .5
    echo  -n -e "\033[20;5;7mContinuing\033[0m"
    sleep .2
    while [ $num -gt 0 ]; do
        echo -n -e "."
        sleep .04
        ((num=num-1))

    done
fi
sleep .4
echo
echo

strArray_StartingLab01_1="Starting Lab01:"
for n in $strArray_StartingLab01_1; do
echo -n "$n"" "
sleep .08
done
sleep .3
echo

strArray_StartingLab01_2="Part 1: Scan the WAN"
for n in $strArray_StartingLab01_2; do
echo -n "$n"" "
sleep .08
done
sleep .5
echo

strArray_StartingLab01_3="nmap -O -v [IP Address]"
for n in $strArray_StartingLab01_3; do
echo -n "$n"" "
sleep .08
done
sleep .5
echo
echo


ipconfig getifaddr en0 | xargs sudo nmap -O -v


echo


presstoContinue="Press ENTER to continue after each statement"
for n in $presstoContinue; do
echo -n "$n"" "
sleep .06
done
echo
echo

strArray_StartingLab01_3=" \t sudo nmap -O -v [IP ADDRESS]"
for n in $strArray_StartingLab01_3; do
echo -n -e "$n"" "
sleep .08
done
sleep .5
echo

read userInput1
if [ $userInput1=="\n" ];
then echo -e '\t \t' "-O: Detect Operating System"
fi
echo


read userInput2
if [ $userInput2=="\n" ];
then echo -e '\t \t' "-v: Make text output more verbose to understand"
fi
echo

read userInput3
if [ $userInput3=="\n" ];
then echo -e '\t' "Actual command was [ ipconfig getifaddr en0 | xargs sudo nmap -O -v ]"
fi
echo

read userInput4
if [ $userInput4=="\n" ];
then echo -e '\t' "sudo nmap -O -v [IP ADDRESS TO SCAN] ---> sudo is there in case you need root privileges"
fi
echo

read userInput5
if [ $userInput5=="\n" ];
then echo -e '\t' "ipconfig getifaddr en0 --> Returns the wireless ip address of the system"
fi
echo

#############################

echo "ipconfig getifaddr en0 ---> $(ipconfig getifaddr en0)"
echo
echo "Just set the IP address because it's getting annoying having to run ipconfig"
read userinput
echo "IPAddress = $(ipconfig getifaddr en0)"

IPAddress=$(ipconfig getifaddr en0)

read userinput
echo $IPAddress
read userinput

echo
##############################


echo "Confirm to continue [ENTER]"
read userInput

echo "going"

#####################################################################################################################################################################################

sleep .5

echo  -n -e "\033[20;5;7mContinuing\033[0m"
let num=$RANDOM%100;
((num=num+30))
sleep .5


while [ $num -gt 0 ]; do
echo -n -e "."
sleep .04
((num=num-1))

done







sleep .4
clear
sleep .8
echo "Press [ENTER] to Continue:"
read userinput
#################################

echo
strArray_TryingAnNmapScan="In the lab, we were originally tasked with running nmap --script=smb-check-vulns -p445 [IP ADDRESS]. "
for n in $strArray_TryingAnNmapScan; do
echo -n "$n"" "
sleep .06
done
echo
read userInput
echo
echo "nmap --script=smb-check-vulns -p445 [IP ADDRESS]"

read userInput
echo


ipconfig getifaddr en0 | xargs nmap --script=smb-check-vulns -p445

echo
echo
strArray_continu="Press [ENTER] to continue: "
for n in $strArray_continu; do
echo -n "$n"" "
sleep .06
done
echo

read userInput
echo

strArray_Nmapdidntwork="this output an error didnt it? This worked on an older server so check the version of nmap"
for n in $strArray_Nmapdidntwork; do
echo -n "$n"" "
sleep .06
done
echo

read userinput
strArray="nmap --version"
for n in $strArray; do
    echo -n "$n"" "
    sleep .06
done
echo

strArray=$(nmap --version)
for n in $strArray; do
echo -n "$n"" "
sleep .06
done
echo

read userinput

echo

echo -e " \t \t From http://superuser.com/questions/1008977/nmap-wont-run-any-scripts:"
read userInput
echo

strArray=" \t In Nmap 6.46BETA6, the smb-check-vulns script was split into 6 different scripts: "
for n in $strArray; do
echo -n -e "$n"" "
sleep .06
done
echo
#################################

read userInput
echo
echo -e "\t \t 1. smb-vuln-conficker"


read userInput
echo -e "\t \t 2. smb-vuln-cve2009-3103"


read userInput
echo -e "\t \t 3. smb-vuln-ms06-025"



read userInput
echo -e "\t \t 4. smb-vuln-ms07-029"


read userInput
echo -e "\t \t 5. smb-vuln-regsvc-dos"


read userInput
echo -e "\t \t 6. smb-vuln-ms08-067"
echo
echo
sleep .4


strArray_continu="Type 1, 2, 3, 4, 5, 6 and press [ENTER] to select a script to run, or \" 0 \" "
for n in $strArray_continu; do
    echo -n "$n"" "
    sleep .06
done
echo
read menuChoice
echo
echo $menuChoice

while [ $menuChoice -ne "0" ]; do




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


read menuChoice

done
#if [ $menuChoice -eq 4 ]; then
#sleep .5
#clear
#sleep .8
#strArray="\n\n \t smb-vuln-ms07-029 \n \t \" \t MS07-029 targets the R_DnssrvQuery() and R_DnssrvQuery2() RPC method which isa part of DNS Server RPC interface that serves as a RPC service for configuring and getting information from the DNS Server service. DNS Server RPC service can be accessed using dnsserver SMB named pipe. The vulnerability is triggered when a long string is send as the zone parameter which causes the buffer overflow which crashes the service. \n"
#
#for n in $strArray; do
#echo -n -e "$n"" "
#sleep .06
#done
#echo -e "\n \t nmap --script=smb-vuln-ms07-029 $IPAddress \n"
#sleep 1
#
#nmap --script=smb-vuln-ms07-029 $IPAddress
#fi



#
#echo
#nmap -v --script=smb-vuln-conficker -p445 192.168.1.68
#echo "nmap -v --script=smb-vuln-conficker -p445 $IPAddress"
#
#echo
#echo
#
#nmap -v --script=smb-vuln-cve2009-3103 -p445 $IPAddress
#echo "nmap -v --script=smb-vuln-cve2009-3103 -p445 $IPAddress"
#
#
#echo
#




#
#
#if [ $menuChoice -eq 5 ]; then
#sleep .5
#clear
#echo
#echo
#sleep .8
#strArray="\t smb-vuln-regsvc-dos \n \t \" \t MS07-029 targets the R_DnssrvQuery() and R_DnssrvQuery2() RPC method which isa part of DNS Server RPC interface that serves as a RPC service for configuring and getting information from the DNS Server service. DNS Server RPC service can be accessed using dnsserver SMB named pipe. The vulnerability is triggered when a long string is send as the zone parameter which causes the buffer overflow which crashes the service. \n"
#
#for n in $strArray; do
#echo -n -e "$n"" "
#sleep .06
#done
#echo
#echo -e " \t nmap --script=smb-vuln-regsvc-dos $IPAddress"
#echo
#sleep 1
#
#nmap --script=smb-vuln-regsvc-dos $IPAddress
#
#if [ $menuChoice -eq 6 ]; then
#sleep .5
#clear
#sleep .8
#strArray="\n\n\t smb-vuln-ms08-067 \n \t \" \t Detects Microsoft Windows systems vulnerable to the remote code execution vulnerability known as MS08-067. This check is dangerous and it may crash systems. \n"
#for n in $strArray; do
#echo -n -e "$n"" "
#sleep .06
#done
#
#echo
#echo -e " \t nmap --script=smb-vuln-ms08-067 $IPAddress"
#echo
#sleep 1
#
#nmap --script=smb-vuln-ms08-067 $IPAddress
#






###########################################################################################################################
strArray_Nmap_iR_Pn_p="Starting Nmap scan on port 80............"
for n in $strArray_Nmap_iR_Pn_p; do
echo -n "$n"" "
sleep .06
done

strArray_Nmap_iR_Pn_p="-iR -Pn -p 80"
for n in $strArray_Nmap_iR_Pn_p; do
echo -n "$n"" "
sleep .06
done
##########################################
nmap -v -iR 10 -Pn -p 80


echo
echo

strArray_Nmap_iR_Pn_p="Press ENTER to continue after each statement"
echo
for n in $strArray_Nmap_iR_Pn_p; do
echo -n "$n"" "
sleep .06
done

echo
read userInput0
if [ $userInput0=="\n" ];
then echo -e '\t' "nmap -v -iR 10 -Pn -p 80"
fi

read userInput1
if [ $userInput1=="\n" ];
then echo -e '\t' "Chose 10 hosts at random, and looked for port 80 (aka web servers)"
fi


read userInput2
if [ $userInput2=="\n" ];
then echo -e '\t' "-v: Verbose -- be a bit more wordy"
fi

read userInput3
if [ $userInput3=="\n" ];
then echo -e '\t' "-Pn: turn off host enumeration"
fi

read userInput4
if [ $userInput4=="\n" ];
then echo -e '\t' "-iR 10: 10 Choose 10 hosts at random"
fi

read userInput5
if [ $userInput5=="\n" ];
then echo -e '\t' "-p 80: look for port 80 on those 10 hosts (web servers)"
fi

echo

####################################################################################################################

echo "Confirm to continue: (y/n)"
read UserInput
if $UserInput="y"; then
clear
let num=$RANDOM%100;
((num=num+30))
sleep .5
echo  -n -e "\033[20;5;7mContinuing\033[0m"
sleep .2
    while [ $num -gt 0 ]; do
        echo -n -e "."
        sleep .04
        ((num=num-1))
    done
fi


echo "Now starting stealth scan nmap -sS"



strArray_Nmap_sS2=" \t sudo nmap -v -sS 192.168.2.8s"
for n in $strArray_Nmap_sS2; do
echo -n -e "$n"" "
sleep .06
done
echo


sudo nmap -v -sS $(ipconfig getifaddr en0)
echo
echo -e -n "\033[20;5;7msudo nmap -v -sS 192.168.2.8\033[0m"
echo
echo
strArray_Nmap_sSDescription4="-sS: Perform stealth scan. Sennd a SYN packet and look for a response. If SYN/ACK is sent back, the port is open and the remote end is trying to open a TCP connection. Scanner then sends an RST to tear down connection before established fully. This prevents the connection attempt appearing in application logs. If port is closed, RST is sent. If filtered, SYN packet drops and no response is sent"
for n in $strArray_Nmap_sSDescription4; do
echo -n "$n"" "
sleep .06
done


echo "."
echo "."
echo "."



#############################################################################################################################################################

