# A Squid proxy for Lab/Home Use #

Run Squid in a docker container. 

Run:  sh ./build.sh

Execute the run command output by the script.

Configure your browser to use your Docker host's ipaddress:3128 as it's proxy server.

This creates the following volumes in /var/lib/docker/volumes/
 - squid-lab-cache
 - squid-lab-etc
 - squid-lab-logs


