BEGIN TRANSACTION;
CREATE TABLE "servers" (
	`serverindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`servername`	TEXT NOT NULL UNIQUE
);
INSERT INTO `servers` VALUES (1,'None');
INSERT INTO `servers` VALUES (2,'gmail.com');
INSERT INTO `servers` VALUES (3,'openmailbox.org');
INSERT INTO `servers` VALUES (4,'hotmail.com');
CREATE TABLE `sections` (
	`sectionindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`sectionname`	TEXT NOT NULL UNIQUE
);
INSERT INTO `sections` VALUES (1,'None');
CREATE TABLE "roles" (
	`roleindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`rolename`	TEXT NOT NULL UNIQUE
);
INSERT INTO `roles` VALUES (1,'None');
CREATE TABLE "provinces" (
	`provinceindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`provincename`	TEXT NOT NULL UNIQUE
);
INSERT INTO `provinces` VALUES (1,'None');
INSERT INTO `provinces` VALUES (2,'Barcelona');
CREATE TABLE "orgs" (
	`orgindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`orgname`	TEXT NOT NULL
);
INSERT INTO `orgs` VALUES (1,'None');
CREATE TABLE "niks" (
	`nikindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`nikname`	TEXT NOT NULL UNIQUE
);
INSERT INTO `niks` VALUES (1,'None');
CREATE TABLE "lastnames" (
	`lastindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`lastname`	TEXT NOT NULL UNIQUE
);
INSERT INTO `lastnames` VALUES (1,'None');
CREATE TABLE `groups` (
	`groupindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`groupname`	TEXT NOT NULL UNIQUE
);
INSERT INTO `groups` VALUES (1,'None');
CREATE TABLE "firstnames" (
	`firstindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`firstname`	TEXT NOT NULL UNIQUE
);
INSERT INTO `firstnames` VALUES (1,'None');
CREATE TABLE "countries" (
	`countryindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`countryname`	TEXT NOT NULL UNIQUE,
	`countryc2`	TEXT(2) NOT NULL UNIQUE,
	`countryc3`	TEXT(3) NOT NULL UNIQUE,
	`countryint`	TEXT,
	`countrycapital`	TEXT,
	`countryremark`	TEXT

);
INSERT INTO `countries` VALUES (1,'XX','XXX','None','','None','');
INSERT INTO `countries` VALUES (2,'Argentina','AR','AR','54','Buenos Aires','');
INSERT INTO `countries` VALUES (3,'France','FR','FRA','','Paris','');
INSERT INTO `countries` VALUES (4,'Spain','ES','ESP','34','Madrid','');
INSERT INTO `countries` VALUES (5,'Italy','IT','ITA','39','Rome','');
CREATE TABLE "contacts" (
	`contactindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`contactname`	TEXT NOT NULL UNIQUE,
	`contactfirst1`	INTEGER NOT NULL DEFAULT 1,
	`contactfirst2`	INTEGER NOT NULL DEFAULT 1,
	`contactlast1`	INTEGER NOT NULL DEFAULT 1,
	`contactlast2`	INTEGER NOT NULL DEFAULT 1,
	`contactnik`	INTEGER NOT NULL DEFAULT 1,
	`contactbirth`	TEXT,
	`contactrole`	INTEGER NOT NULL DEFAULT 1,
	`contactsection`	INTEGER NOT NULL DEFAULT 1,
	`contactorg`	INTEGER NOT NULL DEFAULT 1,
	`contactfix1`	TEXT,
	`contactfix2`	TEXT,
	`contactmov1`	TEXT,
	`contactmov2`	TEXT,
	`contactemail1`	TEXT,
	`contactserver1`	INTEGER,
	`contactemail2`	TEXT,
	`contactserver2`	INTEGER,
	`contactaddress`	TEXT,
	`contactcity`	INTEGER NOT NULL DEFAULT 1,
	`contactzip`	TEXT,
	`contactprovince`	INTEGER NOT NULL DEFAULT 1,
	`contactcountry`	INTEGER NOT NULL DEFAULT 1,
	`contactgroup`	INTEGER NOT NULL DEFAULT 1,
	FOREIGN KEY(`contactfirst1`) REFERENCES `firstnames` ( `firstindx` ),
	FOREIGN KEY(`contactfirst2`) REFERENCES `firstnames` ( `firstindx` ),
	FOREIGN KEY(`contactlast1`) REFERENCES `lastnames` ( `lastindx` ),
	FOREIGN KEY(`contactlast2`) REFERENCES `lastnames` ( `lastindx` ),
	FOREIGN KEY(`contactnik`) REFERENCES `niks` ( `nikindx` ),
	FOREIGN KEY(`contactrole`) REFERENCES `roles` ( `roleindx` ),
	FOREIGN KEY(`contactsection`) REFERENCES `sections` ( `sectionindx` ),
	FOREIGN KEY(`contactorg`) REFERENCES `orgs` ( `orgindx` ),
	FOREIGN KEY(`contactserver1`) REFERENCES `servers` ( `serverindx` ),
	FOREIGN KEY(`contactserver2`) REFERENCES `servers` ( `serverindx` ),
	FOREIGN KEY(`contactcity`) REFERENCES `cities` ( `cityindx` ),
	FOREIGN KEY(`contactprovince`) REFERENCES `provinces` ( `provinceindx` ),
	FOREIGN KEY(`contactcountry`) REFERENCES `countries` ( `countryindx` ),
	FOREIGN KEY(`contactgroup`) REFERENCES `groups` ( `groupindx` )
);
CREATE TABLE "cities" (
	`cityindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`cityname`	TEXT NOT NULL UNIQUE
);
INSERT INTO `cities` VALUES (1,'None');
INSERT INTO `cities` VALUES (2,'Madrid');
CREATE UNIQUE INDEX "completename" on contacts (contactfirst1 ASC, contactfirst2 ASC, contactlast1 ASC, contactlast2 ASC);
CREATE VIEW "view_servers" AS
select serverindx, servername, count(contactserver) as serverqty
FROM
(select serverindx, servername, contactserver1 as contactserver from servers left join contacts on serverindx=contactserver1
UNION ALL
select serverindx, servername , contactserver2 as contactserver from servers left join contacts on serverindx=contactserver2
) as subtotal

group by servername
order by servername;
CREATE VIEW "view_sections" AS
select
sectionindx,
sectionname,
count(contactsection) as sectionqty

from sections

left outer join contacts on sectionindx=contactsection
group by sectionname;
CREATE VIEW "view_roles" AS select
roleindx,
rolename,
count(rolename) as roleqty

from roles

left outer join contacts on roleindx=contactrole
group by rolename;
CREATE VIEW "view_provinces" AS select
provinceindx,
provincename,
count(provincename) as provinceqty

from provinces

left outer join contacts on provinceindx=contactprovince
group by provincename;
CREATE VIEW "view_orgs" AS
select
orgindx,
orgname,
count(orgname) as orgqty

from orgs

left outer join contacts on orgindx=contactorg
group by orgname;
CREATE VIEW "view_niks" AS
select
nikindx,
nikname,
count(contactnik) as nikqty

from niks

left outer join contacts on nikindx=contactnik
group by nikname;
CREATE VIEW "view_lastnames" AS
select lastindx, lastname, count(lastname) as lastqty
FROM
(select lastindx, lastname from lastnames left outer join contacts on lastindx=contactlast1
UNION ALL

select lastindx, lastname from lastnames left outer join contacts on lastindx=contactlast2
) as subtotal

group by lastname
order by lastname;
CREATE VIEW "view_groups" AS select
groupindx,
groupname,
count(groupname) as groupqty

from groups

left outer join contacts on groupindx=contactgroup
group by groupname;
CREATE VIEW "view_firstnames" AS
select firstindx, firstname, count(firstname) as firstqty
FROM
(select firstindx, firstname from firstnames left outer join contacts on firstindx=contactfirst1
UNION ALL

select firstindx, firstname from firstnames left outer join contacts on firstindx=contactfirst2
) as subtotal

group by firstname
order by firstname;
CREATE VIEW "view_countries" AS
select
countryindx,
countryname,
countryint,
countrycapital,
countryc2,
countryc3,
count(countryname) as countryqty,
countryremark

from countries

left outer join contacts on countryindx=contactcountry
group by countryname;
CREATE VIEW "view_contacts" AS
select
contactindx,
contactname,
nikname as contactnik,
contactbirth as contactbirth,
orgname as contactorg,
rolename as contactrole,
sectionname as contactsection,
groupname as contactgroup,
contactfix1 as contactfix1,
contactfix2 as contactfix2,
contactmov1 as contactmov1,
contactmov2 as contactmov2,
contactemail1 || '@' || servers1.servername as contactemail1,
contactemail2 || '@' || servers2.servername as contactemail2,
cityname as contactcity,
provincename as contactprovince,
countryname as contactcountry

from contacts

left join niks on contactnik=nikindx
left join orgs on contactorg=orgindx
left join roles on contactrole=roleindx
left join groups on contactgroup=groupindx
left join sections on contactsection=sectionindx
left join servers as servers1 on contactserver1=servers1.serverindx
left join servers as servers2 on contactserver2=servers2.serverindx
left join cities on contactcity=cityindx
left join provinces on contactprovince=provinceindx
left join countries on contactcountry=countryindx;
CREATE VIEW "view_cities" AS
select
cityindx,
cityname,

count(cityname) as cityqty

from cities

left outer join contacts on cityindx=contactcity
group by cityname;
COMMIT;
