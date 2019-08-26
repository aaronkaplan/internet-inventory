# Prefix 2 ASN

This repo contains code to fetch, store and process the stat.ripe.net RIS prefix data.
See: https://stat.ripe.net/docs/data_api#ris-prefixes

Note that we need to take the RIS data (or some other source of BGP tables) to fetch this information 
since it is always dynamic.

Future versions of this code may include storing historical data.

# Prerequisites

Note that this module needs to have a working [contacts/asns-by-maxmind](https://github.com/aaronkaplan/contacts.cert.at/tree/master/asns-by-maxmind) DB set up in order to fetch all ASNs of the country (or alternatively, the RIPE version of it). We will stick with maxmind in the Internet Inventory though.





