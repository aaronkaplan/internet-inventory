# Internet Inventory

The "Internet Inventory" repository is a collection of datasets and tools to process open source datasets which have some kind of mapping between IP addresses/netblocks or ASNs and some kind of properties. An example of such a mapping would be IP address -> Geolocation. Or IP address -> is a tor exit node.

Most of the data sets already exist out there somehow. But we found no single way to 
  1. have a local copy of all the relevant datasets (for mass log file processing/enrichment)
  2. have a uniform way of querying the datasets

This is the focus of the Internet Inventory.

# Caveats

We know that currently we do not support:

  - [ ] historic data (i.e. keeping a history of all data sets)
  - ... 

# Structure

All datasets are kept in separate git repositories, linked as submodules in this one. Initially, and for all newly added submodules, you need to do:
```bash
git submodule init
```
and to fetch their contents (initially and after modules' updates):
```bash
git submodule update
```

# Author & Comments

The first version of this service was written by me, Aaron Kaplan <aaron@lo-res.org> in my spare time on a train ride on the way to my holidays, 2012. 
All rights reserved. Please send any questions regarding this code to my email address above.

The second version was re-written via the CEF-2016-3 grant. See acknowledgements below.

# License

The standard 3-clause BSD license applies, see the [LICENSE.txt](LICENSE.txt) file for details.

# Acknowledgements

Thanks go to Robert Waldner for very helpful feedback.

![logo](logo.png)

This product includes GeoLite2 data created by MaxMind, available from [https://www.maxmind.com](https://www.maxmind.com).


