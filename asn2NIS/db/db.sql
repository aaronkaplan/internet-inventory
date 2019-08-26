
-- note this table assumes the NIS sector table was already created in the nissectors DB

\c nissectors


CREATE TABLE asn2NIS ( 
    asn integer primary key, 
    primary_sector_id integer, 
    primary_subsector_id integer,
    FOREIGN KEY (primary_sector_id) REFERENCES sector(sector_id),
    FOREIGN KEY (primary_subsector_id) REFERENCES subsector(subsector_id)
);


CREATE TABLE netblock2NIS ( 
    netblock inet primary key, 
    primary_sector_id integer, 
    primary_subsector_id integer,
    FOREIGN KEY  (primary_sector_id) REFERENCES sector(sector_id),
    FOREIGN KEY  (primary_subsector_id) REFERENCES subsector(subsector_id)
);


CREATE TABLE domain2NIS ( 
    domain varchar(1000) primary key,
    primary_sector_id integer, 
    primary_subsector_id integer,
    FOREIGN KEY  (primary_sector_id) REFERENCES sector(sector_id),
    FOREIGN KEY  (primary_subsector_id) REFERENCES subsector(subsector_id)
);


CREATE TABLE asn2NIS_intersection (
    asn integer REFERENCES asn2NIS(asn),
    other_sector_id integer REFERENCES sector(sector_id),
    other_subsector_id integer REFERENCES subsector(subsector_id)
);

CREATE TABLE netblock2NIS_intersection (
    netblock inet REFERENCES netblock2NIS(netblock),
    other_sector_id integer REFERENCES sector(sector_id),
    other_subsector_id integer REFERENCES subsector(subsector_id)
);

CREATE TABLE domain2NIS_intersection (
    domain varchar(1000) REFERENCES domain2NIS(domain),
    other_sector_id integer REFERENCES sector(sector_id),
    other_subsector_id integer REFERENCES subsector(subsector_id)
);
