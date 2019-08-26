# ASN2NIS

This module creates a mapping ASN -> NIS sector, netblock -> NIS sector and domain -> NIS sector.
Please note that you must **first** have the [NIS-sectors](https://github.com/aaronkaplan/NIS-sectors/) DB up and installed.

# How to install

```bash
psql nissectors < db/db.sql
psql nissectors < db/data.sql
```


**NOTE** as of this writing the data.sql file is not included because we need to wait for an official designation of companies/ASNs and their respective NIS status.
So this is more of a legal reason why we can't pre-release any such mapping. 
However, as of now, the DB structure is here (just the data can't be released yet). So  it should help other countries / national CSIRTs to actually run the same queries to their respective NIS sector dataset mappings.


