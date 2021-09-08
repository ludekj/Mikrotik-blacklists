import requests

url = "https://sslbl.abuse.ch/blacklist/sslipblacklist.txt"
f = (requests.get(url)).text

a = open("blacklist.rsc", "w")

for line in f.splitlines():
    if not line.startswith('#'):
        a.write(("/ip firewall address-list add address=") +
                line + (" comment=blacklist list=blacklist\n"))

input_file = "blacklist.rsc"
with open(input_file, "r") as fp:
    lines = fp.readlines()
    new_lines = []
    for line in lines:
        # - Strip white spaces
        line = line.strip()
        if line not in new_lines:
            new_lines.append(line)

output_file = "blacklist.rsc"
with open(output_file, "w") as fp:
    fp.write("\n".join(new_lines))
