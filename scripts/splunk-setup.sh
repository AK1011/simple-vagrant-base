#!/bin/bash

# [General] Unpack RPM
cd /opt
# TODO: have RPM on the server at this point, locally, wget the rpm, on INF, get the rpm from the repo
wget -O /opt/splunk-server.rpm 'http://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=6.2.5&product=splunk&filename=splunk-6.2.5-272645-linux-2.6-x86_64.rpm&wget=true'
service iptables stop
chkconfig iptables off
rpm -i --replacepkgs /opt/splunk-server.rpm
rm -f splunk-server.rpm
/opt/splunk/bin/splunk start --accept-license
/opt/splunk/bin/splunk enable boot-start -user splunk #<"root" or "splunk" user>
