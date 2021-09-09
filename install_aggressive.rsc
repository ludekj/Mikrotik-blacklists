/system scheduler
add interval=1d name=update_aggressive on-event="/tool fetch url=\"https://raw.githubusercontent.com/ludekj/Mikrotik-aggressives/main/aggressive.rsc\" mode=http;\r\
    \n\r\
    \n:log info \"aggressive downloaded\";\r\
    \n\r\
    \n:delay 5;\r\
    \n\r\
    \n:foreach i in=[/ip firewall address-list find ] do={\r\
    \n   :if ( [/ip firewall address-list get \$i comment] = \"aggressive\" ) do={\r\
    \n      /ip firewall address-list remove \$i\r\
    \n   }\r\
    \n}\r\
    \n:do {\r\
    \n/import file-name=aggressive.rsc;\r\
    \n} on-error={}\r\
    \n:log info \"update aggressive address\";\r\
    \n\r\
    \n/file remove aggressive.rsc\r\
    \n\r\
    \n:log info \"remove script\"" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=sep/08/2021 start-time=00:02:30
