--CREATE TABLE PC_Teams (
--  ID int,    
--  IDMozz int,
--	TeamMozz varchar(255),  
--  LeagueMozz varchar(255),  
--  IDMer int,   
--	TeamMer varchar(255)
--  LeagueMer varchar(255), 
--);

------------------------------------------

--CREATE TABLE PC_gamesMozz (
--    ID int,
--    HomeTeam varchar(255),
--    AwayTeam varchar(255),
--	Kec float,
--	Iks float,
--	Dvojka float      
--);
------------------------------------------
--CREATE TABLE PC_gamesMer (
--    ID int,
--    HomeTeam varchar(255),
--    AwayTeam varchar(255),
--	Kec float,
--	Iks float,
--	Dvojka float   
--);


--INSERT INTO PC_Teams VALUES(1, 111, 'C.Z', 777, 'CrvZv')
--INSERT INTO PC_Teams VALUES(1, 222, 'Par.', 888, 'Partizan')

--INSERT INTO PC_gamesMozz VALUES(1, 'C.Z', 'Par.', 1.3, 3.1, 1.9)
--INSERT INTO PC_gamesMer VALUES(1, 'CrvZv', 'Partizan', 1.6, 3.0, 1.5)


select * from PC_Teams
select * from PC_gamesMozz
select * from PC_gamesMer



select PC_gamesMozz.HomeTeam, PC_gamesMozz.AwayTeam, 
	   IIF(PC_gamesMozz.Kec < PC_gamesMer.Kec, PC_gamesMer.Kec, PC_gamesMozz.Kec ) as Kec,
	   IIF(PC_gamesMozz.Iks < PC_gamesMer.Iks, PC_gamesMer.Iks, PC_gamesMozz.Iks ) as Iks,
	   IIF(PC_gamesMozz.Dvojka < PC_gamesMer.Dvojka, PC_gamesMer.Dvojka, PC_gamesMozz.Dvojka ) as Dvojka  
from PC_gamesMozz
inner join PC_Teams on PC_Teams.TeamMozz = PC_gamesMozz.HomeTeam
inner join PC_gamesMer on PC_gamesMer.HomeTeam = PC_Teams.TeamMer