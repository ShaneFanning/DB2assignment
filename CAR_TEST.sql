
DROP TABLE CarRecord CASCADE CONSTRAINTS PURGE;

DROP TABLE Letters CASCADE CONSTRAINTS PURGE;

DROP TABLE ClericalOfficer CASCADE CONSTRAINTS PURGE;

DROP TABLE Criticality CASCADE CONSTRAINTS PURGE;

DROP TABLE TestPart CASCADE CONSTRAINTS PURGE;

DROP TABLE Mechanic CASCADE CONSTRAINTS PURGE;

DROP TABLE Test CASCADE CONSTRAINTS PURGE;

DROP TABLE TestCentre CASCADE CONSTRAINTS PURGE;

DROP TABLE Supervisor CASCADE CONSTRAINTS PURGE;

DROP TABLE Car CASCADE CONSTRAINTS PURGE;

DROP TABLE Owner CASCADE CONSTRAINTS PURGE;

CREATE TABLE Car
(
	Registration         VARCHAR2(20) NOT NULL ,
	Make                 VARCHAR2(20) NULL ,
	Year_of_Manufacture  DATE NULL ,
	OwnerID              VARCHAR2(20) NOT NULL 
);

ALTER TABLE Car
	ADD CONSTRAINT  XPKCar PRIMARY KEY (Registration);

CREATE TABLE CarRecord
(
	Registration         VARCHAR2(20) NOT NULL ,
	DateLastTest         DATE NULL ,
	NumOfFails           INTEGER NULL ,
	IsDestroyed          NUMBER(1) NULL CHECK(IsDestroyed = 1 or IsDestroyed = 0)
);

ALTER TABLE CarRecord
	ADD CONSTRAINT  XPKCarRecord PRIMARY KEY (Registration);

CREATE TABLE ClericalOfficer
(
	ClerkName            VARCHAR2(20) NOT NULL ,
	CentreName           VARCHAR2(20) NOT NULL 
);

ALTER TABLE ClericalOfficer
	ADD CONSTRAINT  XPKClericalOfficer PRIMARY KEY (ClerkName);

CREATE TABLE Mechanic
(
	MechanicName         VARCHAR2(20) NOT NULL ,
	Speciality           VARCHAR2(20) NULL ,
	MechAvailability         NUMBER(1) NULL CHECK(MechAvailability = 1 or MechAvailability = 0) ,
	CentreName           VARCHAR2(20) NOT NULL 
);

ALTER TABLE Mechanic
	ADD CONSTRAINT  XPKMechanic PRIMARY KEY (MechanicName);

CREATE TABLE Owner
(
	OwnerName                 VARCHAR2(20) NULL ,
	Address              VARCHAR2(40) NULL ,
	OwnerID              VARCHAR2(20) NOT NULL 
);

ALTER TABLE Owner
	ADD CONSTRAINT  XPKOwner PRIMARY KEY (OwnerID);

CREATE TABLE Letters
(
	Registration         VARCHAR2(20) NOT NULL ,
	DateSent             DATE NOT NULL ,
	ClerkName            VARCHAR2(20) NOT NULL ,
	OwnerName                 VARCHAR2(20) NULL ,
	Address              VARCHAR2(40) NULL ,
	OwnerID              VARCHAR2(20) NOT NULL 
);

ALTER TABLE Letters
	ADD CONSTRAINT  XPKLetters PRIMARY KEY (Registration,DateSent);

CREATE TABLE Supervisor
(
	SuperVisorName       CHAR(18) NOT NULL ,
	SuperVisorID         INTEGER NOT NULL 
);

ALTER TABLE Supervisor
	ADD CONSTRAINT  XPKSupervisor PRIMARY KEY (SuperVisorID);

CREATE TABLE Test
(
	Registration         VARCHAR2(20) NOT NULL ,
	TestNo               INTEGER NOT NULL ,
	TestPassed           NUMBER(1) NULL CHECK(TestPassed = 1 or TestPassed = 0) ,
	TestComment          VARCHAR2(150) NULL ,
	TestDate             DATE NULL ,
	CentreName           VARCHAR2(20) NOT NULL 
);

ALTER TABLE Test
	ADD CONSTRAINT  XPKTest PRIMARY KEY (TestNo);

CREATE TABLE TestCentre
(
	CentreName           VARCHAR2(20) NOT NULL ,
	Region               VARCHAR2(20) NULL ,
	SuperVisorID         INTEGER NOT NULL
);

ALTER TABLE TestCentre
	ADD CONSTRAINT  XPKTestCentre PRIMARY KEY (CentreName);

CREATE TABLE TestPart
(
	PartName             VARCHAR2(20) NOT NULL ,
	TestPartPassed       NUMBER(1) NULL CHECK(TestPartPassed = 1 or TestPartPassed = 0) ,
	PartComment           CHAR(100) NULL ,
	MechanicName         VARCHAR2(20) NULL ,
	TestNo             INTEGER NOT NULL 
);

ALTER TABLE TestPart
	ADD CONSTRAINT  XPKTestPart PRIMARY KEY (TestNo, PartName);

CREATE TABLE Criticality
(
	CriticalityLevel     CHAR(10) NOT NULL ,
	PartName             VARCHAR2(20) NOT NULL ,
	TestNo             INTEGER NOT NULL 
);

ALTER TABLE Criticality
	ADD CONSTRAINT  XPKCriticality PRIMARY KEY (PartName,TestNo);

ALTER TABLE Car
	ADD (CONSTRAINT R_7 FOREIGN KEY (OwnerID) REFERENCES Owner (OwnerID));

ALTER TABLE CarRecord
	ADD (CONSTRAINT R_1 FOREIGN KEY (Registration) REFERENCES Car (Registration));

ALTER TABLE ClericalOfficer
	ADD (CONSTRAINT R_15 FOREIGN KEY (CentreName) REFERENCES TestCentre (CentreName));

ALTER TABLE Mechanic
	ADD (CONSTRAINT R_13 FOREIGN KEY (CentreName) REFERENCES TestCentre (CentreName));

ALTER TABLE Letters
	ADD (CONSTRAINT R_11 FOREIGN KEY (OwnerID) REFERENCES Owner (OwnerID));

ALTER TABLE Letters
	ADD (CONSTRAINT R_14 FOREIGN KEY (ClerkName) REFERENCES ClericalOfficer (ClerkName));

ALTER TABLE Test
	ADD (CONSTRAINT R_2 FOREIGN KEY (Registration) REFERENCES Car (Registration));

ALTER TABLE Test
	ADD (CONSTRAINT R_12 FOREIGN KEY (CentreName) REFERENCES TestCentre (CentreName));

ALTER TABLE TestCentre
	ADD (CONSTRAINT R_19 FOREIGN KEY (SuperVisorID) REFERENCES Supervisor (SuperVisorID));

ALTER TABLE TestPart
	ADD (CONSTRAINT R_3 FOREIGN KEY (TestNo) REFERENCES Test (TestNo));

ALTER TABLE TestPart
	ADD (CONSTRAINT R_4 FOREIGN KEY (MechanicName) REFERENCES Mechanic (MechanicName));

ALTER TABLE Criticality
	ADD (CONSTRAINT R_22 FOREIGN KEY (TestNo, PartName) REFERENCES TestPart (TestNo, PartName));

--Car Test Database Insert Statments


--Owner Inserts

INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (100, 'Mark Flanagan', '123 Fake Street');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (101, 'Sean Boomington', '108 Johnstown Avenue');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (102, 'Shane Fanning', '102 Lad Lane');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (103, 'Ron Swanson', '56 Unknown Road');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (104, 'Leslie Knope', '10 Birdwalk Park');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (105, 'Tom Dwan', '37 Cypress Hill');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (106, 'Antonio Esfandiari', '40 Green Street');

--Car inserts

INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('12-D-12345', 'BMW', TO_DATE('2012-10-11', 'YYYY-MM-DD'), 100);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('06-D-51234', 'Mercedes', TO_DATE('2006-08-12', 'YYYY-MM-DD'), 101);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('07-W-45123', 'BMW', TO_DATE('2007-09-12', 'YYYY-MM-DD'), 102);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('08-KE-34512', 'Mercedes', TO_DATE('2008-08-12', 'YYYY-MM-DD'), 103);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('90-D-23451', 'Porsche', TO_DATE('1990-03-10', 'YYYY-MM-DD'), 104);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('05-D-23456', 'BMW', TO_DATE('2005-04-11', 'YYYY-MM-DD'), 105);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('09-C-62345', 'Ferrari', TO_DATE('2009-10-05', 'YYYY-MM-DD'), 106);

--CarRecord Inserts

INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('12-D-12345', TO_DATE('2013-03-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('06-D-51234', TO_DATE('2009-06-09', 'YYYY-MM-DD'), 1, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('07-W-45123', TO_DATE('2008-02-05', 'YYYY-MM-DD'), 0, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('08-KE-34512', TO_DATE('2009-10-04', 'YYYY-MM-DD'), 0, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('90-D-23451', TO_DATE('2014-02-02', 'YYYY-MM-DD'), 2, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('05-D-23456', TO_DATE('2010-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('09-C-62345', TO_DATE('2011-02-09', 'YYYY-MM-DD'), 3, 1);

--Supervisor inserts

INSERT INTO Supervisor(SupervisorName, SupervisorID) VALUES('Kurt Russell', 100);
INSERT INTO Supervisor(SupervisorName, SupervisorID) VALUES('Nigel Delaney', 101);

--Test Centre inserts

INSERT INTO TestCentre(CentreName, Region, SupervisorID) VALUES('Rathgar Centre', 'Dublin South', 100);
INSERT INTO TestCentre(CentreName, Region, SupervisorID) VALUES('Swords Centre', 'Dublin North', 101);

--Clerical officer

INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Brendan Powers', 'Rathgar Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Jimmy Crocket', 'Rathgar Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Pepe Hennesey', 'Swords Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Mike Hunt', 'Swords Centre');

--Letter inserts

INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('06-D-51234', TO_DATE('2009-05-09', 'YYYY-MM-DD'), 'Pepe Hennesey', 'Sean Boomington', '108 Johnstown Avenue',101);
INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('12-D-12345', TO_DATE('2013-02-01', 'YYYY-MM-DD'), 'Jimmy Crocket', 'Mark Flanagan', '123 Fake Street', 100);
INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('07-W-45123', TO_DATE('2008-01-05', 'YYYY-MM-DD'), 'Brendan Powers', 'Shane Fanning', '102 Lad Lane', 102);
INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('08-KE-34512', TO_DATE('2009-09-04', 'YYYY-MM-DD'), 'Mike Hunt', 'Leslie Knope', '10 Birdwalk Park', 104);

--Mechanic inserts

INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Mark Wahlberg', 'Engines', 1, 'Swords Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Jackie Chan', 'Engines', 1, 'Rathgar Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Baby Goose', 'Brakes', 1, 'Rathgar Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Bertie Ahern', 'Brakes', 0, 'Swords Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Bruce Billson', 'Chasis', 1, 'Swords Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Ivan Ivanson', 'Chasis', 0, 'Rathgar Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Jiminy Cricket', 'Interior', 1, 'Swords Centre');

--Test inserts

INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('07-W-45123', 001, TO_DATE('2012-05-09', 'YYYY-MM-DD'), 'Rathgar Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('08-KE-34512', 002, TO_DATE('2008-08-12', 'YYYY-MM-DD'), 'Swords Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('05-D-23456', 003, TO_DATE('2010-01-01', 'YYYY-MM-DD'), 'Rathgar Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('09-C-62345', 004, TO_DATE('2009-10-05', 'YYYY-MM-DD'), 'Swords Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('90-D-23451', 005, TO_DATE('1990-03-10', 'YYYY-MM-DD'), 'Swords Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('12-D-12345', 006, TO_DATE('2012-10-11', 'YYYY-MM-DD'), 'Rathgar Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('06-D-51234', 007, TO_DATE('2012-08-12', 'YYYY-MM-DD'), 'Swords Centre');

--Test Part
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 1, 'Brakes were in perfect working order', 'Baby Goose', 001 );
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Jackie Chan', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Ivan Ivanson', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Jackie Chan', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Ivan Ivanson', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Baby Goose', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 0, 'Engine consistently misfiring', 'Jackie Chan', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 0, 'Left side of Chasis is bent!', 'Ivan Ivanson', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Bertie Ahern', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Mark Wahlberg', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Bruce Billson', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Interior', 0, 'Seats need of replacement!', 'Jiminy Cricket', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 0, 'Brake pads slightly worn', 'Bertie Ahern', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Mark Wahlberg', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Bruce Billson', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Interior', 1, 'Lovely Interior!', 'Jiminy Cricket', 005);


--Criticality
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 001);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 001);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 001);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 002);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 002);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 003);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 003);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 003);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 004);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 004);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 004);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Low', 'Interior', 004);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 005);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 005);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 005);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Low', 'Interior', 005);

GRANT SELECT
ON Car|Test|TestPart|Criticality
TO Clerk;

GRANT UPDATE
ON CarRecord, Test, TestPart
TO Clerk;

GRANT INSERT
ON Letters
TO Clerk;

GRANT UPDATE
ON Mechanic
TO Supervisor;
