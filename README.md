# zabbix-ipv4address

External Script for checking IPv4 address using `dig` or `getent`

Could be done with a simple `system.run[dig +short {HOST.CONN}]` however I wanted the ability to have the possibility of fallback or expansion later.

## Installation

* `cd` to Zabbix's `externalscripts/` directory
* clone
* `cd zabbix-ipv4address`
* `chmod 755 ipv4address.sh`

## Test

`./ipv4address.sh google.com`

`./ipv4address.sh google.com dig`

`./ipv4address.sh google.com getent`

## Usage

Create a Zabbix External check Item with key `ipv4address.sh[{HOST.CONN}]`

Can use `dig` or `getent` as the second argument, though it will use `dig` as default
