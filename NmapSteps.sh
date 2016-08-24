

#######Enter Demo########
strArray="This is a demo of nmap and its uses. It is based off of content derived from CIS 102 at De Anza College (Ethical Hacking). The script will occasionally prompt the user for input on whether to continue or not. Press [ENTER] after each command for it to run"
for n in $strArray; do
echo -n "$n"" "
sleep .06
done
echo

echo "Confirm to continue: (y/n)"
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
clear
sleep .8



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



strArray_Nmap_sS2="sudo nmap -v -sS 192.168.2.8s"
for n in $strArray_Nmap_sS2; do
echo -n "$n"" "
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

echo "Confirm to continue (y/n)"
read userInput
if [ userInput="y" ]; then

    sleep .5
    echo  -n -e "\033[20;5;7mContinuing\033[0m"
    sleep .2
    while [ $num -gt 0 ]; do
        echo -n -e "."
        sleep .04
        ((num=num-1))
    done
sleep .4
clear
sleep .8
fi

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


ipconfig getifaddr en0 | xargs sudo nmap -O -v


echo

strArray_StartingLab01_3="sudo nmap -0 -v [IP ADDRESS]"
for n in $strArray_StartingLab01_3; do
    echo -n "$n"" "
    sleep .08
done

sleep .5
echo


echo
echo

presstoContinue="Press ENTER to continue after each statement"
for n in $presstoContinue; do
echo -n "$n"" "
sleep .06
done

echo
read userInput0
if [ $userInput0=="\n" ];
then echo -e '\t' "Actual command was [ ipconfig getifaddr en0 | xargs sudo nmap -O -v ]"
fi
echo
read userInput1
if [ $userInput1=="\n" ];
then echo -e '\t' "sudo nmap -O -v [IP ADDRESS TO SCAN] ---> sudo is there in case you need root privileges"
fi

echo
read userInput2
if [ $userInput2=="\n" ];
then echo -e '\t' "ipconfig getifaddr en0 --> Returns the wireless ip address of the system"
fi

sleep .5
echo
echo "ipconfig getifaddr en0"

ipconfig getifaddr en0
echo
sleep .5


#####################################################################################################################################################################################
echo
echo "Confirm to continue (y/n)"
read userInput
if [ userInput="y" ]; then
    sleep .5
    echo  -n -e "\033[20;5;7mContinuing\033[0m"
    sleep .2
    while [ $num -gt 0 ]; do
        echo -n -e "."
        sleep .04
        ((num=num-1))
    done
    sleep .4
    clear
    sleep .8
fi


echo
echo "nmap --version"
echo -e " \t \t From http://superuser.com/questions/1008977/nmap-wont-run-any-scripts:     In Nmap 6.46BETA6, the smb-check-vulns script was split into 6 different scripts: "
echo
strArray_CheckScripts0="smb-vuln-conficker"
for n in $strArray_CheckScripts0; do
    echo -n "$n"" "
    sleep .08
done

strArray_CheckScripts1="smb-vuln-cve2009-3103"
for n in $strArray_CheckScripts1; do
echo -n "$n"" "
sleep .08
done

strArray_CheckScripts1="smb-vuln-ms06-025"
for n in $strArray_CheckScripts1; do
echo -n "$n"" "
sleep .08
done

strArray_CheckScripts1="smb-vuln-ms07-029"
for n in $strArray_CheckScripts1; do
echo -n "$n"" "
sleep .08
done


strArray_CheckScripts1="smb-vuln-regsvc-dos"
for n in $strArray_CheckScripts1; do
echo -n "$n"" "
sleep .08
done

strArray_CheckScripts1="smb-vuln-ms08-067"
for n in $strArray_CheckScripts1; do
echo -n "$n"" "
sleep .08
done


echo
nmap ipconfig getifaddr en0 | xargs nmap --script=smb-check-vulns -p445

echo "this output an error didnt it? This worked on an older server so check the version of nmap"

echo
echo "Just set the IP address because it's getting annoying having to run ipconfig"
echo "IPAddress=$(ipconfig getifaddr en0)"
IPAddress=$(ipconfig getifaddr en0)
echo $IPAddress
echo
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




