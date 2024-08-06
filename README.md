<h1>Network Scanner</h1>


<h2>Description</h2>
This Bash script is a network scanner that uses nmap to identify and provide details about active devices within a specified network range. It begins by checking if nmap is installed, prompting the user to install it if not found. The script then validates the provided network range and displays usage instructions if the input is incorrect or missing. Upon validation, it conducts an initial nmap scan to identify active devices within the network range. The script extracts and lists the IP addresses of these active devices and performs a more detailed version scan on each one in parallel. The results offer insights into the services and versions running on the active devices, enhancing network visibility and security assessment capabilities.
<br />


<h2>Languages and Utilities Used</h2>

- <b>Bash</b> 

<h2>Environments Used </h2>

- <b>Kali Linux</b>

<h2>Program walk-through:</h2>

<p align="center">
Sample output showing how to use the script: <br/>
<img src="https://imgur.com/fveY5sg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>

