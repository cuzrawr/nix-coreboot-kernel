
Structure of overlay:
overlay/etc/network/interfaces.d            - here populated interfaces
overlay/etc/iptables.conf                   - basic iptables filter conf
overlay/etc/wireguard/wg0exampleprivate.key - example key private key for tests, removethis
overlay/etc/init.d/S98wireguard             - wireguard init script
overlay/etc/init.d/S45connman               - just dummy file
overlay/etc/init.d/S34ifaceshelper          - this helps ifupdown to run udhcp client on some non-hardcoded interfaces 
overlay/etc/default/systemconfig            - all system variables goes here
overlay/etc/default/dropbear                - dropbear conf



DONT FORGET 
chmod +x etc/init.d/S*

