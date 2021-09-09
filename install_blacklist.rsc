/system scheduler
add interval=1d name=update_blacklist on-event="/tool fetch url=\"https://raw.githubusercontent.com/ludekj/Mikrotik-blacklists/main/blacklist.rsc\" mode=http;\r\
    \n\r\
    \n:log info \"Blacklist downloaded\";\r\
    \n\r\
    \n:delay 5;\r\
    \n\r\
    \n:foreach i in=[/ip firewall address-list find ] do={\r\
    \n   :if ( [/ip firewall address-list get \$i comment] = \"blacklist\" ) do={\r\
    \n      /ip firewall address-list remove \$i\r\
    \n   }\r\
    \n}\r\
    \n:do {\r\
    \n/import file-name=blacklist.rsc;\r\
    \n} on-error={}\r\
    \n:log info \"update blacklist address\";\r\
    \n\r\
    \n/file remove blacklist.rsc\r\
    \n\r\
    \n:log info \"remove script\"" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=sep/08/2021 start-time=00:02:00
