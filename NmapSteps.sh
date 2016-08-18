





nmap -v -iR 10 -Pn -p 80

echo
echo -e '\t' "nmap -v -iR 10 -Pn -p 80"
echo -e '\t \t'	"-v: "Verbose" be a bit more wordy"
echo -e '\t \t'	"-Pn: turn off host enumeration"
echo	-e '\t \t'	 -iR 10: 10 Choose 10 hosts at random
echo	-e '\t \t'	"-p 80: look for port 80 on those 10 hosts (web servers)"
echo 
echo "Now starting stealth scan nmap -sS 192.168.2.8" 


sudo nmap -v -sS 192.168.2.8

echo -e '\t' "nmap -sS 192.168.2.8"
echo -e '\t\t' "-sS: Perform stealth scan. Sennd a SYN packet and look for a response. If SYN/ACK is sent back, the port is open and the remote end is trying to open a TCP connection. Scanner then sends an RST to tear down connection before established fully. This prevents the connection attempt appearing in application logs. If port is closed, RST is sent. If filtered, SYN packet drops and no response is sent"  

echo
echo
echo
echo
echo "starting Lab01:"
echo "Part 1: Scan the WAN"

ipconfig getifaddr en0 | xargs sudo  nmap -O -v

echo "starting Lab01:"
echo "Part 1: Scan the WAN"
echo
echo
echo
echo "sudo nmap -O -v [IP ADDRESS TO SCAN]"
echo "ipconfig getifaddr en0"
echo "--> Returns the wireless ip address of the system. sudo is there in case you need root privileges"
echo
echo


ipconfig getifaddr en0

echo
echo
echo
nmap ipconfig getifaddr en0 | xargs nmap --script=smb-check-vulns -p445
echo "nmap --script=smb-check-vulns -p445 [IP ADDRESS]"
echo
echo
echo "this output an error didn't it? This worked on an older server so check the version of nmap"
nmap --version
echo
echo
echo "nmap --version"
echo -e " \t \t From http://superuser.com/questions/1008977/nmap-wont-run-any-scripts:          In Nmap 6.46BETA6, the smb-check-vulns script was split into 6 different scripts: "
echo -e " \t \t \t smb-vuln-conficker"
echo -e " \t \t \t smb-vuln-cve2009-3103"
echo -e " \t \t \t smb-vuln-ms06-025"
echo -e " \t \t \t smb-vuln-ms07-029"
echo -e " \t \t \t smb-vuln-regsvc-dos"
echo -e " \t \t \t smb-vuln-ms08-067"
echo
echo "Just set the IP address because it's getting annoying having to run ipconfig"
echo "IPAddress=$(ipconfig getifaddr en0)"
IPAddress=$(ipconfig getifaddr en0)
echo $IPAddress
echo
echo
echo
echo
echo
echo
nmap -v --script=smb-vuln-conficker -p445 192.168.1.68
echo "nmap -v --script=smb-vuln-conficker -p445 $IPAddress"

echo
echo

nmap -v --script=smb-vuln-cve2009-3103 -p445 $IPAddress
echo "nmap -v --script=smb-vuln-cve2009-3103 -p445 $IPAddress"


echo





