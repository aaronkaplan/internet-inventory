#!/bin/bash

DATE=$(date  "+%Y-%m-%d")
country=AT



asns=${country}-asns.txt
url=https://stat.ripe.net/data/ris-prefixes/data.json?resource=3333&list_prefixes=true
url=https://stat.ripe.net/data/ris-prefixes/data.json?resource=
outfile="${DATE}-RIS-${country}-"

if [ ! -f $asns ] ; then
    echo "need to fetch the ASN list before via the ../contacts/asns-by-maxmind/fetch.sh script. Exiting..."
    exit 255
fi


##########
# format
# ...
#    "data": {
#        "query_time": "2019-08-26T16:00:00", 
#        "noise": [
#            "keep"
#        ], 
#        "resource": "50782", 
#        "af": [
#            "v4", 
#            "v6"
#        ], 
#        "list_prefixes": true, 
#        "prefixes": {
#            "v4": {
#                "originating": [
#                    "185.246.20.0/22", 
#                    "185.159.200.0/22", 
#                    "2.57.48.0/22"
#                ], 
#                "transitting": []
#            }, 
#            "v6": {
#                "originating": [
#                    "2a07:b6c0::/29", 
#                    "2a0d:6680::/29"
#                ], 
#                "transitting": []
#            }
#        }, 
# ...
for asn in $(cat $asns); do
    # o="${outfile}${asn}.json"
    wget -q -O - "${url}${asn}&list_prefixes=true" | ./transform.py

done



