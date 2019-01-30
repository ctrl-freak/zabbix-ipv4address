# zabbix-ipv4address

External Script for checking IPv4 address using `dig` or `getent`

Could be done with a simple `system.run[dig +short {HOST.CONN}]` however I wanted the ability to have the possibility of fallback or expansion later.

## Installation

* `git clone https://github.com/ctrl-freak/zabbix-ipv4address.git`
* `cp zabbix-ipv4address/ipv4address.sh /usr/lib/zabbix/externalscripts/`)
* `chmod 755 /usr/lib/zabbix/externalscripts/ipv4address.sh`

## Test

`cd /usr/lib/zabbix/externalscripts/`

`./ipv4address.sh google.com`

`./ipv4address.sh google.com dig`

`./ipv4address.sh google.com getent`

## Usage

Create a Zabbix External check Item with key `ipv4address.sh[{HOST.CONN}]`

Can use `dig` or `getent` as the second argument, though it will use `dig` as default

`ipv4address.sh[{HOST.CONN},getent]`
