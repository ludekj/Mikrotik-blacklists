# Mikrotik-blacklists

aktuální stav 

[![built blacklist rsc](https://github.com/ludekj/Mikrotik-blacklists/actions/workflows/blacklist.yml/badge.svg)](https://github.com/ludekj/Mikrotik-blacklists/actions/workflows/blacklist.yml)

[![built aggressive rsc](https://github.com/ludekj/Mikrotik-blacklists/actions/workflows/aggressive.yml/badge.svg)](https://github.com/ludekj/Mikrotik-blacklists/actions/workflows/aggressive.yml)

Update probíhá každý den v 01:00

# Instalace - Blacklist

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
5. Blokování přes raw FW ( ušetří cca 8% výkonu CPU )
```
/ip firewall raw
add action=drop chain=prerouting src-address-list=blacklist
```

# Instalace - Aggressive Blacklist

1. Přihlásit se to mikrotiku pod minimálně write právy
2. Otevřít terminál / ssh 
3. Vložit následující příkaz 
```
/tool fetch url=https://raw.githubusercontent.com/ludekj/Mikrotik-blacklists/main/install_aggressive.rsc mode=http
```
4. Nainstalovat 
```
/import file-name=install_aggressive.rsc
```
5. Blokování přes raw FW ( ušetří cca 8% výkonu CPU )
```
/ip firewall raw
add action=drop chain=prerouting src-address-list=aggressive
```

# Zdroje

### Blacklist
- https://sslbl.abuse.ch/blacklist/sslipblacklist.txt

### Aggresive Blacklist
- https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.txt
