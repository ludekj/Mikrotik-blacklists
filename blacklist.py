import requests

url = "https://sslbl.abuse.ch/blacklist/sslipblacklist.txt"
f = (requests.get(url)).text

a = open("blacklist.rsc", "w")

for line in f.splitlines():
    if not line.startswith('#'):
        a.write(("/ip firewall address-list add address=") +
                line + (" comment=blacklist list=blacklist\n"))
