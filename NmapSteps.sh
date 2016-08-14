





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


