<h1>Windows Scripts</h1>

This directory contains various PowerShell and bash scripts that were used to parse through a list of ~50000 sites in a school's DNS. Many of these sites were unsecured and included login pages, unsecured cameras, printers, and Lab equipment settings/info.

<h2>Scripts</h2>

<h3>openport.ps1</h3>

This PowerShell script allows you to check if a specific port is open on a target computer. You can specify the target computer and port numbers as arguments. The script will return the status of the port for each target computer.

<h3>testconnection.sh</h3>

This bash script reads in a list of host names from a file called "input.lst" and checks if each host is reachable. It will output either "up" or "down" for each host.

<h3>testconnection.ps1</h3>

This PowerShell script is similar to the bash script above, but it reads in a list of host names from a file called "hnames.txt" and outputs the reachability status for each host. It also generates three output files: "result.csv", "offline.csv", and "online.csv". The first file contains the reachability status for all hosts, the second contains a list of hosts that are offline, and the third contains a list of hosts that are online.
