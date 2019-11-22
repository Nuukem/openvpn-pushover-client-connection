# OpenVPN Pushover on Client Connection
OpenVPN scripts to send an alert via <a href="https://pushover.net">Pushover</a> when a User Connects and Disconnects.

Download and copy the two scripts into openvpn server directory
```
wget -O - https://github.com/Nuukem/openvpn-pushover-client-connection/tarball/master | tar xz
cd into new directory
cp *.sh /etc/openvpn/server/
```

Edit the scripts to include your Pushover API and User keys, Client Name (location of the OpenVPN server) and if you want to use HTML formatting or not.

CHMOD them for execution
```
cd /etc/openvpn/server/
chmod a+x up.sh down.sh
```

Edit your OpenVPN config to include the two scripts to send a Pushover notification when a user connects and disconnects from the OpenVPN server. 

```
script-security 2
client-connect /etc/openvpn/server/up.sh
client-disconnect /etc/openvpn/server/down.sh
```
