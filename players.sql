createdb players_table
 psql -d players_table
 \list
 \c players_table
 CREATE TABLE players(
   id serial UNIQUE NOT NULL,
   Last_Name varchar(100) NOT NULL,
   First_Name varchar(100) NOT NULL,
   Position varchar(3) UNIQUE,
   Jersey_Number decimal(3,0) UNIQUE,
   Weight decimal(3,0),
   Height decimal(2,0),
   Date_of_Birth DATE NOT NULL
 );

 INSERT INTO players VALUES(1,'Fisher','Derek','QB',	2,210,	74,	'1999-01-02');

 INSERT INTO players VALUES(2,'Cunningham','Reginald','DE',	55	,240	,	75,	'1998-04-03');

 INSERT INTO players VALUES(3,'Jackson','Stephen','WR',13,184,	76,	'1998-10-13');

 INSERT INTO players VALUES(4,'Colton','Ryan','K',81,234,	74,	'1998-12-12');

 INSERT INTO players VALUES(5,'Wright','Alexander','QB',	23, 190,	70,	'1999-03-13');

 INSERT INTO players VALUES(6,'Smalls','Elliot','OLB',	33, 215,	69,	'1999-02-23');

 ALTER TABLE players ALTER COLUMN POSITION
 SET DEFAULT 'ATH'varchar(3) UNIQUE NOT NULL;

 ALTER TABLE players ALTER COLUMN Jersey_Number
 SET decimal(3,0) UNIQUE NOT NULL;
