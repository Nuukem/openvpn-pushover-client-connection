# openvpn-pushover-client-connection
OpenVPN scripts to send an alert via Pushover when a User Connects and Disconnects.

Copy the two scripts into
```
/etc/openvpn/server/
```

CHMOD then for execution
```
$ chmod a+x up.sh down.sh
```

Edit your OpenVPN config to include the two scripts to send a Pushover notification when a user connects and disconnects from the OpenVPN server. 

```
script-security 2
client-connect /etc/openvpn/server/up.sh
client-disconnect /etc/openvpn/server/down.sh
```
