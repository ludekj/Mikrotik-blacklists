# Mikrotik-blacklists

aktuální stav buildu
[![built blacklist rsc](https://github.com/ludekj/Mikrotik-blacklists/actions/workflows/blacklist.yml/badge.svg)](https://github.com/ludekj/Mikrotik-blacklists/actions/workflows/blacklist.yml)

Update probíhá každý den v 01:00

# Instalace

1. Přihlásit se to mikrotiku pod minimálně write právy
2. Otevřít terminál / ssh 
3. Vložit následující příkaz 
```
/tool fetch url=https://raw.githubusercontent.com/ludekj/Mikrotik-blacklists/main/install_blacklist.rsc mode=http
```
4. Nainstalovat 
```
/import file-name=install_blacklist.rsc
```

# Zdroje

### Blacklist
- https://sslbl.abuse.ch/blacklist/sslipblacklist.txt
