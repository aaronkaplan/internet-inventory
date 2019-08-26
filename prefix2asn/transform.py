#!/usr/bin/env python3

import json
import sys

""" Input format of the file is:
{
    "status": "ok",
    ...
    "data": {
        "query_time": "2019-08-26T16:00:00",
        "noise": [
            "keep"
        ],
        "resource": "12453",
        "af": [
            "v4",
            "v6"
        ],
        "list_prefixes": true,
        "prefixes": {
            "v4": {
                "originating": [
                    "185.31.52.0/22",
                    "194.59.177.0/24",
                    ....
                    "195.93.174.0/23"
                ],
                "transitting": []
            },
            "v6": {
                "originating": [
                    "2a0c:1f00::/29"
                ],
                "transitting": []
            }
        },
        ...
"""


def parsejson(j):
    """ returns a tuple: (asn, list of v4 prefixes, list of v6 prefixes) or None if not OK."""
    if j['status'] != 'ok':
        return None

    asn = j['data']['resource']
    prefixes_v4 = j['data']['prefixes']['v4']['originating']
    prefixes_v6 = j['data']['prefixes']['v6']['originating']
    return (asn, prefixes_v4, prefixes_v6)


if __name__ == "__main__":
    if (len(sys.argv) > 1):
        f = open(sys.argv[1])
    else:
        f = sys.stdin
    with f:
        data = json.load(f)
        (asn, prefixes_v4, prefixes_v6) = parsejson(data)
        print(asn, prefixes_v4, prefixes_v6)
